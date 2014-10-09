<?php

class ClienteController extends BaseController {

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
		$cliente = new Cliente;
		$cliente->cedula = $data['cedula'];
		$cliente->seguro_social = $data['seguro_social'];
		$cliente->primer_nombre = $data['primer_nombre'];
		$cliente->segundo_nombre = $data['segundo_nombre'];
		$cliente->primer_apellido = $data['primer_apellido'];
		$cliente->segundo_apellido = $data['segundo_apellido'];
		$cliente->fecha_nacimiento = $data['fecha_nacimiento'];
		$cliente->femenino = $data['sexo'];
		$cliente->id_tipo_sangre = $data['id_tipo_sanguineo'];
		$cliente->celular = $data['celular'];
		$cliente->telefono_residencia = $data['telefono_residencia'];
		$cliente->telefono_oficina = $data['telefono_oficina'];
		$cliente->email = $data['email'];
		$cliente->direccion = $data['direccion'];
		$cliente->save();

		return Redirect::route('cliente.index');	

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
		$data['cliente'] = Cliente::find($id);
		$data['form'] = array('route' => array('cliente.update', $id), 'method' => 'PATCH');
		return View::make('cliente/list-edit-form')->with('data', $data);
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
		$cliente = Cliente::find($id);
		$cliente->cedula = $data['cedula'];
		$cliente->seguro_social = $data['seguro_social'];
		$cliente->primer_nombre = $data['primer_nombre'];
		$cliente->segundo_nombre = $data['segundo_nombre'];
		$cliente->primer_apellido = $data['primer_apellido'];
		$cliente->segundo_apellido = $data['segundo_apellido'];
		$cliente->fecha_nacimiento = $data['fecha_nacimiento'];
		$cliente->femenino = $data['sexo'];
		$cliente->id_tipo_sangre = $data['id_tipo_sanguineo'];
		$cliente->celular = $data['celular'];
		$cliente->telefono_residencia = $data['telefono_residencia'];
		$cliente->telefono_oficina = $data['telefono_oficina'];
		$cliente->email = $data['email'];
		$cliente->direccion = $data['direccion'];
		$cliente->save();
		return Redirect::route('cliente.edit', $id);	

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
