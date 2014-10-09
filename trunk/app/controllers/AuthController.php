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
	      			if(Auth::user()->id_rol == 3){
						$id = Colaborador::where('cedula', Auth::user()->user)->first()->id;
						return Redirect::route('colaborador.edit', $id);	
					}else{
						return View::make('menu');		
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
	      }
	      return Redirect::to('/');
	    }
	    
	}
?>
