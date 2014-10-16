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
				'msg' => $data['mensaje'],
				'country' => $data['ciudad']
			);

			$fromEmail = $data['email']; 
			$fromName = $data['nombre'];
			//$to = "jsaldana@hospitalchiriqui.com, cquintero@hospitalchiriqui.com, mtrianes@hospitalchiriqui.com,relacionespublicas@hospitalchiriqui.com,sugerencias@hospitalchiriqui.com,rmartinez@hospitalchiriqui.com,rpublicas_mercadeo@hospitalchiriqui.com";

			$to = array('luis2531@gmail.com', 'luisagustin_mendoza@hotmail.com',  'luis.mendoza1@utp.ac.pa');
			foreach ($to as $para) {			
				Mail::send('emails.templatesugerencia', $datos_email, function($message) use ($fromName, $fromEmail, $para)
				{
					$message->from($fromEmail, $fromName);
					$message->to($para);
					$message->subject('CONTACTO HOSPITAL CHIRIQUI - DAVID - PANAMA!');
				});
			}

			$mensaje['class'] = 'success';
			$mensaje['mensaje'] = 'Su mensaje ha sido enviado con éxito. Será revizado y contestado por nuestro personal';

			return View::make('sugerencia/form')->with('mensaje', $mensaje);
			//<img src="{{ $message->embed('img/becas.jpg')}}"/> para enviar una imagen en el correo (se coloca en el template del mensaje a enviar)
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
