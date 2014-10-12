<?php

class SugerenciaController extends BaseController {

	public function __construct(){
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$mensaje['class'] = '';
		$mensaje['mensaje'] = '';
		return View::make('sugerencia/form')->with('mensaje', $mensaje);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$data = Input::all();
		$rules = array(
		  'nombre' => 'required',
		  'email' => 'required',
		  'mensaje' => 'required', 
		  'codigo' => 'required|captcha|min:7|max:7'
		);
		
		$validator = Validator::make($data, $rules);
		
		if($validator -> fails()) {

		  return Redirect::to('sugerencia')->withErrors($validator)->withInput();
		}else{
			$sugerencia = new Sugerencia;
			$sugerencia->nombre = $data['nombre'];
			$sugerencia->email = $data['email'];
			$sugerencia->telefono = $data['telefono'];
			$sugerencia->ciudad = $data['ciudad'];
			$sugerencia->mensaje = $data['mensaje'];
			$sugerencia->save();

			$datos_email = array(
				'name' => $data['nombre'],
				'email' => $data['email'],
				'phone' => $data['telefono'],
				'msg' => $data['mensaje']
			);

			$fromEmail = 'luisagustin_mendoza@hotmail.com';
			$fromName = 'Luis';

			Mail::send('emails.templatesugerencia', $datos_email, function($message) use($fromName, $fromEmail)
			{
				$message->to($fromEmail, $fromName);
				$message->subject('SUGERENCIAS HOSPITAL CHIRIQUI - DAVID - PANAMA!');
			});

			$mensaje['class'] = 'success';
			$mensaje['mensaje'] = 'Su mensaje ha sido enviado con éxito. Será revizado y contestado por nuestro personal';

			return View::make('sugerencia/form')->with('mensaje', $mensaje);
		}
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */

	public function show($id)
	{


	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{

	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{

	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
	}


}
