<?php

class UserController extends BaseController {

	public function __construct(){
	}

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		$datos['form'] = array('route' => 'usuario.store', 'method' => 'post');
		$datos['usuario'] = new Usuario;
		return View::make('usuario/form')->with('datos', $datos);
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
		$usuario = new User;
		$usuario->user = $data['user'];
		$usuario->password = Hash::make($data['pass']);
		$usuario->id_rol = $data['id_rol'];
		$usuario->save();

		return Redirect::route('usuario.index');	

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
		$datos['form'] = array('route' => array('usuario.update', $id), 'method' => 'PATCH');
		$datos['usuario'] = Usuario::find($id);
		return View::make('usuario/form')->with('datos', $datos);
		
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
		$usuario = Usuario::find($id);
		$usuario->user = $data['user'];
		if(!empty($data['pass'])){
			$usuario->password = Hash::make($data['pass']);
		}
		$usuario->id_rol = $data['id_rol'];
		$usuario->save();
		return Redirect::route('usuario.index');
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
