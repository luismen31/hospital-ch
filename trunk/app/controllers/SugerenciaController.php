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
		$rules = array(
		  'codigo' => 'required|captcha|min:7|max:7'
		);
		
		$validator = Validator::make($data, $rules);
		
		if($validator -> fails()) {
		  return Redirect::to('sugerencia')-> withErrors($validator)->withInput();
		}else{
			$sugerencia = new Sugerencia;
			$sugerencia->nombre = $data['nombre'];
			$sugerencia->email = $data['email'];
			$sugerencia->telefono = $data['telefono'];
			$sugerencia->ciudad = $data['ciudad'];
			$sugerencia->mensaje = $data['mensaje'];
			$sugerencia->save();
			return View::make('sugerencia/form')
			->with('mensaje', '<div class="alert alert-success alert-dismissible" role="alert"><button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button><strong>Su mensaje ha sido enviado con éxito.</strong></div>');
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
