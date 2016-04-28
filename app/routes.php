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

//API PARA OBTENER MEDICOS
Route::get('api/getMedicos', ['uses' => 'ApiHospitalController@getAllMedics']);

Route::get('api/medico/{id}', ['uses' => 'ApiHospitalController@getMedico']);
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
//Route::get('/charlaembarazada', function(){ return View::make('charlaembarazada'); });
Route::get('/entrega_medalla', function(){ return View::make('medalla'); });
Route::get('/fiestas_patrias', function(){ return View::make('fiestas_patrias'); });
Route::get('/relevo', function(){ return View::make('relevo'); });
Route::get('/congreso2015', function(){ return View::make('congreso2015'); });
Route::get('/canastilla', function(){ return View::make('canastilla'); });
Route::get('/contrato_energia_solar', function(){ return View::make('contrato'); });
Route::get('padrino-empresario', array('as' => 'padrino', function(){ return View::make('padrino-empresario'); }));

//Modal de medicos
Route::post('getMedico', 'getMedicosController@postDatos');
//Vistas Dinamicas
Route::resource('sugerencia', 'SugerenciaController');
Route::get('/system_resume',function(){ 
	if(Auth::check()){
		if(Auth::user()->id_rol == 3){
			$id = Colaborador::where('cedula', Auth::user()->user)->first()->id;
			return Redirect::route('colaborador.edit', $id);	
		}elseif(Auth::user()->id_rol == 6){ //Si es cliente de inscripcion
			$id_cliente = ClienteUsuario::where('id_usuario', Auth::user()->id)->first()->id_cliente; 
			$id = ClienteInscripcion::where('id', $id_cliente)->first()->id;
			return Redirect::route('inscripcion.edit', $id);
		}else{
			return Redirect::to('/menu');	
		}
	}else{
		return View::make('system_resume'); 
	}
});
Route::post('login', 'AuthController@postLogin');
Route::get('/logout', 'AuthController@getLogout')->before('auth');
Route::resource('colaborador', 'HojaVidaController');

Route::controller('buscar', 'BuscarController');
Route::resource('inscripcion', 'InscripcionController');
Route::get('congreso/programa', ['as' => 'programa', function(){
	return View::make('inscripciones.programa');
}]);

Route::group(['before' => 'auth'], function(){
	Route::get('/menu', function(){
		$contents = View::make('menu');
		$response = Response::make($contents, 200);
		$response->header('Expires', 'Tue, 1 Jan 1980 00:00:00 GMT');
		$response->header('Cache-Control', 'no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$response->header('Pragma', 'no-cache');
		return $response;
	});
	Route::resource('cliente', 'ClienteController');
	Route::resource('usuario', 'UserController');
});
Route::resource('modulo', 'ModuloController');

