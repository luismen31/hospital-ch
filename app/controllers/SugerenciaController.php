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
		return View::make('sugerencia/form')->with('mensaje', '');
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
		$sugerencia = new Sugerencia;
		$sugerencia->nombre = $data['nombre'];
		$sugerencia->email = $data['email'];
		$sugerencia->telefono = $data['telefono'];
		$sugerencia->ciudad = $data['ciudad'];
		$sugerencia->mensaje = $data['mensaje'];
		$sugerencia->save();
		return View::make('sugerencia/form')->with('mensaje', '<center><div style="color:red;">Su mensaje ha sido enviado con éxito.</div></center>');
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
