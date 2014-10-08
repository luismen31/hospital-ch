<?php
	class AuthController extends BaseController{
		
		
		//Función para verificar los datos del usuario e iniciar sesión
		public function postLogin() {
		  $reglas = array(
	  			'user' => 'required', 
	  			'password' => 'required|alpha_num'
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
		        return View::make('colaborador/list-edit-form');
		      }else{
		      	return View::make('system_resume')->with('error_login', 'Usuario o Contraseña estan Incorrectos');	      	
		      }		  	
		  }	     
	    } 
	    
	    //Funcion para cerrar sesión
	    public function getLogout(){
	      if(Auth::check()){
	         Auth::logout();
	      }
	      return Redirect::to('/');
	    }
	    
	}
?>
