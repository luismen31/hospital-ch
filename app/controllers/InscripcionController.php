<?php

class InscripcionController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{	
		if(Auth::check()){
			if(Auth::user()->id_rol == 7){
				//Vista que solo revisara el administrador	
				return View::make('inscripciones.index');
			}else{
				$id_cliente = ClienteUsuario::where('id_usuario', Auth::user()->id)->first()->id_cliente; 
				return Redirect::route('inscripcion.edit', $id_cliente);
			}
		}
		App::abort(403);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//Si esta logueado redirige a ver su estado.
		if(Auth::check() and Auth::user()->id_rol == 6){
			$id_cliente = ClienteUsuario::where('id_usuario', Auth::user()->id)->first()->id_cliente; 
			$id = ClienteInscripcion::where('id', $id_cliente)->first()->id;
			return Redirect::route('inscripcion.edit', $id);
		}
		return View::make('inscripciones.create');
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$rules = [
			'cedula' => 'required',
			'primer_nombre' => 'required',
			'apellido_paterno' => 'required',
			'usuario' => 'required',
			'password' => 'required|min:6',
			'id_provincia' => 'not_in:0',
			'id_distrito' => 'not_in:0',
			'id_corregimiento' => 'not_in:0',
			'email' => ['required', 'email'],
			'telefono' => 'required',
			'tipo_participante' => ['required', 'not_in:0'],
		];

		$datos = Input::all();
		$v = Validator::make($datos, $rules);
		if($v->fails()){
			return Redirect::back()->withErrors($v)->withInput();
		}

		$cliente = new ClienteInscripcion;
		$cliente->cedula = $datos['cedula'];
		$cliente->primer_nombre = $datos['primer_nombre'];
		$cliente->segundo_nombre = $datos['segundo_nombre'];
		$cliente->apellido_paterno = $datos['apellido_paterno'];
		$cliente->apellido_materno = $datos['apellido_materno'];
		$cliente->sexo = $datos['sexo'];
		$cliente->id_tipo_participante = $datos['tipo_participante'];
		$cliente->telefono = $datos['telefono'];
		$cliente->celular = $datos['celular'];
		$cliente->email = $datos['email'];
		$cliente->facebook = $datos['facebook'];
		$cliente->twitter = $datos['twitter'];
		$cliente->instagram = $datos['instagram'];
		$cliente->id_provincia = $datos['id_provincia'];
		$cliente->id_distrito = $datos['id_distrito'];
		$cliente->id_corregimiento = $datos['id_corregimiento'];
		$cliente->direccion = $datos['direccion'];
		$cliente->save();

		$user = new User;
		$user->user = $datos['usuario'];
		$user->password = Hash::make($datos['password']);
		$user->id_rol = 6;
		$user->save();

		$clienteUser = new ClienteUsuario;
		$clienteUser->id_cliente = $cliente->id;
		$clienteUser->id_usuario = $user->id;
		$clienteUser->save();

		//variable que viajara a la vista de email
		$datos_email = array(
			'nombre_cliente' => $cliente->primer_nombre.' '.$cliente->apellido_paterno,
			'user' => $user->user,
			'pass' => $datos['password'],
		);
		
		$toEmail = $cliente->email;
		$toName = $cliente->primer_nombre.' '.$cliente->apellido_paterno;
		//Enviamos el mail con los datos correspondientes.
		Mail::send('emails.registro-inscripcion', $datos_email, function($message) use ($toEmail, $toName)
		{
			$message->from('no-reply@hospitalchiriqui.com', 'Hospital Chiriquí');
			$message->to($toEmail, $toName);
			$message->subject('REGISTRO AL XXVIII CONGRESO MÉDICO HOSPITAL CHIRIQUÍ');
		});

		Session::flash('success', 'Usted se ha registrado correctamente al Congreso Médico 2016, recuerde pagar al banco y registrar el slip de pago al sistema.');
		return Redirect::to('congreso');
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$cliente = ClienteInscripcion::find($id);
		if(Auth::check() and Auth::user()->id_rol == 7){
			$datosInscripcion = DetalleInscripcion::where('id_cliente_inscripcion', $id)->orderBy('created_at', 'DESC')->take(1)->get();
		}
		return View::make('inscripciones.edit', compact(['cliente', 'datosInscripcion']));
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{	
		//Si es admin actualizara el estatus de cada uno de los clientes. Sino se actualiza los datos de slip del cliente.
		$cliente = ClienteInscripcion::find($id);
		if(Auth::check() and Auth::user()->id_rol == 7){
			//Actualiza el estado del cliente
			$cliente->estado = 1;
			$cliente->save();

			//variable que viajara a la vista de email
			$datos_email = array(
				'nombre_cliente' => $cliente->primer_nombre.' '.$cliente->apellido_paterno,
			);
			
			$toEmail = $cliente->email;
			$toName = $cliente->primer_nombre.' '.$cliente->apellido_paterno;
			//Enviamos el mail con los datos correspondientes.
			Mail::send('emails.inscripcion-mail', $datos_email, function($message) use ($toEmail, $toName)
			{
				$message->from('contacto@hospitalchiriqui.com', 'Hospital Chiriquí');
				$message->to($toEmail, $toName);
				$message->subject('INSCRIPCIÓN AL XXVIII CONGRESO MÉDICO HOSPITAL CHIRIQUÍ');
			});
			
			//Enviamos mensaje de exito al admin y retornamos a la funcion index.
			Session::flash('success', 'El cliente '.$cliente->primer_nombre.' '.$cliente->apellido_paterno.' ha sido inscrito correctamente.');
			return Redirect::route('inscripcion.index');
		}

		//El cliente registrara sus slip de pago.
		$rules = [
			'fecha_pago' => 'required',
			'codigo_slip' => 'required',
			'monto' => 'required'
		];

		$datos = Input::all();
		$v = Validator::make($datos, $rules);
		if($v->fails()){
			return Redirect::back()->withErrors($v)->withInput();
		}

		$inscripcion = new DetalleInscripcion;
		$inscripcion->fecha_pago = $datos['fecha_pago'];
		$inscripcion->id_cliente_inscripcion = $id;
		$inscripcion->codigo_slip = $datos['codigo_slip'];
		$inscripcion->monto = $datos['monto'];
		$inscripcion->save();

		//variable que viajara a la vista de email
		$datos_email = array(
			'nombre_cliente' => $cliente->primer_nombre.' '.$cliente->apellido_paterno,
			'cedula' => $cliente->cedula,
			'monto' => $datos['monto'],
			'codigo' => $datos['codigo_slip'],
			'fecha_pago' => $datos['fecha_pago'],
		);
		
		$toEmail = $cliente->email;
		$toName = $cliente->primer_nombre.' '.$cliente->apellido_paterno;
		//Enviamos el mail con los datos correspondientes.
		Mail::send('emails.confirmacion-pago', $datos_email, function($message) use ($toEmail, $toName)
		{
			$message->from($toEmail, $toName);
			$message->to($toEmail, $toName);
			$message->subject('Confirmación de Pago al Congreso Médico 2016');
		});

		Session::flash('success', 'Se ha registrado correctamente los datos del slip de pago. Se le estará enviando un correo cuando esté aprobada su inscripción');
		return Redirect::route('inscripcion.edit', $id);

	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}


}
