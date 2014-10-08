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
		$data['colaborador'] = new Colaborador;
		$data['form'] = array('route' => 'colaborador.store', 'method' => 'post');
		return View::make('colaborador/list-edit-form')->with('data', $data);
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

		return Redirect::route('colaborador.index');	

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
		$data = Input::all();
		$colaborador = Colaborador::find($id);
		$colaborador->cedula = $data['cedula'];
		$colaborador->seguro_social = $data['seguro'];
		$colaborador->primer_nombre = $data['primer_nombre'];
		$colaborador->segundo_nombre = $data['segundo_nombre'];
		$colaborador->primer_apellido = $data['primer_apellido'];
		$colaborador->segundo_apellido = $data['segundo_apellido'];
		$colaborador->fecha_nacimiento = $data['fecha_nacimiento'];
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
		$colaborador->save();
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
