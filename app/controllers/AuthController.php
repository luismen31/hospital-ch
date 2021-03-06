<?php
	class AuthController extends BaseController{
		
		
		//Función para verificar los datos del usuario e iniciar sesión
		public function postLogin() {
		  $reglas = array(
	  			'user' => 'required', 
	  			'password' => 'required'
		  ); 	
		  
		  $validator = Validator::make(Input::all(), $reglas);

		  if($validator->fails()){
		  	return Redirect::to('/system_resume')->withErrors($validator)->withInput();
		  }else{

		      $user_data = array(
		         'user' => Input::get('user'),
		         'password' => Input::get('password')
		      );

		      if(Auth::attempt($user_data)){
	      			if(Auth::user()->id_rol == 3){
						$id = Colaborador::where('cedula', Auth::user()->user)->first()->id;
						return Redirect::route('colaborador.edit', $id);	
					}elseif(Auth::user()->id_rol == 6){ //Si el usuario es cliente para congreso
						$id_cliente = ClienteUsuario::where('id_usuario', Auth::user()->id)->first()->id_cliente; 
						$id = ClienteInscripcion::where('id', $id_cliente)->first()->id;
						return Redirect::route('inscripcion.edit', $id);
					}else{
						return Redirect::to('menu');	
					}
		      }else{
		      	return View::make('system_resume')->with('error_login', 'Usuario o Contraseña estan Incorrectos');	      	
		      }		  	
		  }	     
	    } 
	    
	    //Funcion para cerrar sesión
	    public function getLogout(){
	      if(Auth::check()){
	         Auth::logout();
	         Session::flush();
	      }
			return Redirect::to('menu');
	      
	    }
	    
	}
?>
