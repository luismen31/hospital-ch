<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function(){
	return View::make('inicio');
});
//Contacto
Route::get('/historia', function(){ return View::make('historia'); });
Route::get('/junta', function(){ return View::make('junta'); });
Route::get('/fundadores', function(){ return View::make('fundadores'); });
Route::get('/mision', function(){ return View::make('mision'); });
//Nuestros Doctores
Route::get('/directorio', function(){ return View::make('directorio'); });
//Atencion especializada
Route::get('/enfermeria', function(){ return View::make('enfermeria'); });
Route::get('/neonatologia', function(){ return View::make('neonatologia'); });
//Hospitalizacion
Route::get('/hospitalizacion', function(){ return View::make('hospitalizacion'); });
Route::get('/admision', function(){ return View::make('admision'); });
Route::get('/seguros', function(){ return View::make('seguros'); });
Route::get('/registrobb', function(){ return View::make('registrobb'); });
Route::get('/hemodialisis', function(){ return View::make('hemodialisis'); });
Route::get('/cuidados', function(){ return View::make('cuidados'); });
Route::get('/quirofano', function(){ return View::make('quirofano'); });
Route::get('/laboratorio', function(){ return View::make('laboratorio'); });
Route::get('/rayosx', function(){ return View::make('rayosx'); });
Route::get('/urgencias', function(){ return View::make('urgencias'); });
Route::get('/capilla', function(){ return View::make('capilla'); });
Route::get('/farmacia', function(){ return View::make('farmacia'); });
//Media Press
Route::get('/compromiso', function(){ return View::make('compromiso'); });
Route::get('/cintarosada', function(){ return View::make('cintarosada'); });

Route::get('/congreso', function(){ return View::make('congreso'); });
Route::get('/charlaembarazada', function(){ return View::make('charlaembarazada'); });

//Vistas Dinamicas
Route::resource('sugerencia', 'SugerenciaController');
Route::get('/system_resume',function(){ 
	if(Auth::check()){
		if(Auth::user()->id_rol == 3){
			$id = Colaborador::where('cedula', Auth::user()->user)->first()->id;
			return Redirect::route('colaborador.edit', $id);	
		}else{
			return View::make('menu');		
		}
		
	}else{
		return View::make('system_resume'); 
	}

});
Route::post('login', 'AuthController@postLogin');
Route::get('logout', 'AuthController@getLogout');
Route::resource('colaborador', 'HojaVidaController');
Route::resource('cliente', 'ClienteController');

//Rutas de Logueo y Registro de Usuarios
Route::get('registro', 'AuthController@getRegistro')->before('auth');
Route::post('registrar', 'AuthController@register');
