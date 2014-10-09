<?php

class HojaVidaController extends BaseController {

	public function __construct(){
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$data['cliente'] = new Cliente;
		$data['form'] = array('route' => 'cliente.store', 'method' => 'post');
		return View::make('cliente/list-edit-form')->with('data', $data);
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
		$colaborador = new Colaborador;
		$colaborador->cedula = $data['cedula'];
		$colaborador->seguro_social = $data['seguro'];
		$colaborador->primer_nombre = $data['primer_nombre'];
		$colaborador->segundo_nombre = $data['segundo_nombre'];
		$colaborador->primer_apellido = $data['primer_apellido'];
		$colaborador->segundo_apellido = $data['segundo_apellido'];
		$colaborador->fecha_nacimiento = $data['fecha_nacimiento'];
		$colaborador->femenino = $data['sexo'];
		$colaborador->id_tipo_sangre = $data['id_tipo_sanguineo'];
		$colaborador->celular = $data['celular'];
		$colaborador->telefono_residencia = $data['telefono_residencia'];
		$colaborador->telefono_oficina = $data['telefono_oficina'];
		$colaborador->email = $data['email'];
		$colaborador->direccion = $data['direccion'];
		$colaborador->lugar_residencia = $data['lugar_residencia'];
		$colaborador->id_nacionalidad = $data['id_nacionalidad'];
		$colaborador->id_estado_civil = $data['id_estado'];
		$colaborador->facebook = $data['facebook'];
		$colaborador->twitter = $data['twitter'];
		$colaborador->presion = $data['presion'];
		$colaborador->licencia = $data['licencia'];
		$colaborador->pass_encriptado = Crypt::encrypt($data['pass']);
		$colaborador->id_area_aplicacion = $data['aplicacion'];
		$colaborador->id_estudio = $data['estudios'];
		$colaborador->save();

		$id = Colaborador::all()->last()->id;
		
		for($x=1;$x<5;$x++){
			$estudio = new EstudioColaborador;
			if(!empty($data['estudio_'.$x.''])){
				$estudio->id_colaborador = $id;
				$estudio->estudio = $data['estudio_'.$x.''];
				$estudio->save();
			}
		}

		for($x=1;$x<5;$x++){
			$experiencia = new ExperienciaColaborador;
			if(!empty($data['experiencia_'.$x.''])){
				$experiencia->id_colaborador = $id;
				$experiencia->experiencia = $data['experiencia_'.$x.''];
				$experiencia->save();
			}
		}

		for($x=1;$x<4;$x++){
			$idioma = new IdiomaColaborador;
			if($data['idioma_'.$x.''] <> 0){
				$idioma->id_colaborador = $id;
				$idioma->id_idioma = $data['idioma_'.$x.''];
				$idioma->id_nivel = $data['nivel_'.$x.''];
				$idioma->save();
			}
		}
		
		$usuario = new User;
		$usuario->user = $data['cedula'];
		$usuario->password = Hash::make($data['pass']);
		$usuario->id_rol = 3;
		$usuario->save();

		return View::make('system_resume');	

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
		$data['colaborador'] = Colaborador::find($id);
		$data['form'] = array('route' => array('colaborador.update', $id), 'method' => 'PATCH');
		$data['colaborador']->pass = Crypt::decrypt($data['colaborador']->pass_encriptado);
		$estudios = EstudioColaborador::where('id_colaborador', $id)->get();
		$x = 1;
		foreach ($estudios as $estudio) {
			$data['estudio_'.$x.''] = $estudio->estudio;
			$x++;
		}
		for($y=$x;$y<5;$y++){
			$data['estudio_'.$y.''] = '';	
		}
		$experiencias = ExperienciaColaborador::where('id_colaborador', $id)->get();
		$x = 1;
		foreach ($experiencias as $experiencia) {
			$data['experiencia_'.$x.''] = $experiencia->experiencia;
			$x++;
		}
		for($y=$x;$y<5;$y++){
			$data['experiencia_'.$y.''] = '';	
		}
		$idiomas = IdiomaColaborador::where('id_colaborador', $id)->get();
		$x = 1;
		foreach ($idiomas as $idioma) {
			$data['idioma_'.$x.''] = $idioma->id_idioma;
			$data['nivel_'.$x.''] = $idioma->id_nivel;
			$x++;
		}
		for($y=$x;$y<4;$y++){
			$data['idioma_'.$y.''] = 0;	
			$data['nivel_'.$y.''] = 0;
		}

		return View::make('colaborador/list-edit-form')->with('data', $data);
	}



	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$data = Input::all();

		$colaborador = Colaborador::find($id);
		
		$id_user = User::where('user', $data['cedula'])->first()->id;
		$usuario = User::find($id_user);
		$usuario->password = Hash::make($data['pass']);
		$usuario->save();
		
		$colaborador->cedula = $data['cedula'];
		$colaborador->seguro_social = $data['seguro'];
		$colaborador->primer_nombre = $data['primer_nombre'];
		$colaborador->segundo_nombre = $data['segundo_nombre'];
		$colaborador->primer_apellido = $data['primer_apellido'];
		$colaborador->segundo_apellido = $data['segundo_apellido'];
		$colaborador->fecha_nacimiento = $data['fecha_nacimiento'];
		$colaborador->celular = $data['celular'];
		$colaborador->lugar_residencia = $data['lugar_residencia'];
		$colaborador->femenino = $data['sexo'];
		$colaborador->id_tipo_sangre = $data['id_tipo_sanguineo'];
		$colaborador->telefono_residencia = $data['telefono_residencia'];
		$colaborador->telefono_oficina = $data['telefono_oficina'];
		$colaborador->email = $data['email'];
		$colaborador->direccion = $data['direccion'];
		$colaborador->id_nacionalidad = $data['id_nacionalidad'];
		$colaborador->id_estado_civil = $data['id_estado'];
		$colaborador->facebook = $data['facebook'];
		$colaborador->twitter = $data['twitter'];
		$colaborador->presion = $data['presion'];
		$colaborador->licencia = $data['licencia'];
		$colaborador->id_area_aplicacion = $data['aplicacion'];
		$colaborador->id_estudio = $data['estudios'];
		$colaborador->pass_encriptado = Crypt::encrypt($data['pass']);
		$colaborador->save();

		$estudios = EstudioColaborador::where('id_colaborador', $id)->get();
		$x = 1;
		foreach ($estudios as $estudio){
			$estudiocolaborador = EstudioColaborador::find($estudio->id);
			$estudiocolaborador->estudio = $data['estudio_'.$x.''];
			$estudiocolaborador->save();
			$x++;
		}
		for($y=$x;$y<5;$y++){
			if(!empty($data['estudio_'.$y.''])){
				$estudiocolaborador = new EstudioColaborador;
				$estudiocolaborador->id_colaborador = $id;
				$estudiocolaborador->estudio = $data['estudio_'.$y.''];
				$estudiocolaborador->save();
			}
		}

		$experiencias = ExperienciaColaborador::where('id_colaborador', $id)->get();
		$x = 1;
		foreach ($experiencias as $experiencia){
			$experienciacolaborador = ExperienciaColaborador::find($experiencia->id);
			$experienciacolaborador->experiencia = $data['experiencia_'.$x.''];
			$experienciacolaborador->save();
			$x++;
		}
		for($y=$x;$y<5;$y++){
			if(!empty($data['experiencia_'.$y.''])){
				$experienciacolaborador = new ExperienciaColaborador;
				$experienciacolaborador->id_colaborador = $id;
				$experienciacolaborador->experiencia = $data['experiencia_'.$y.''];
				$experienciacolaborador->save();
			}
		}

		$idiomas = IdiomaColaborador::where('id_colaborador', $id)->get();
		$x = 1;
		foreach ($idiomas as $idioma){
			$idiomascolaborador = IdiomaColaborador::find($idioma->id);
			$idiomascolaborador->id_idioma = $data['idioma_'.$x.''];
			$idiomascolaborador->id_nivel = $data['nivel_'.$x.''];
			$idiomascolaborador->save();
			$x++;
		}
		for($y=$x;$y<4;$y++){
			if(!empty($data['idioma_'.$y.''])){
				$idiomascolaborador = new IdiomaColaborador;
				$idiomascolaborador->id_colaborador = $id;
				$idiomascolaborador->id_idioma = $data['idioma_'.$y.''];
				$idiomascolaborador->id_nivel = $data['nivel_'.$x.''];
				$idiomascolaborador->save();
			}
		}
		return Redirect::route('colaborador.edit', $id);	

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
