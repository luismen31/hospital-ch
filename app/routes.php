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

Route::get('/historia', function(){ return View::make('historia'); });
Route::get('/historia', function(){ return View::make('historia'); });

//Rutas de Logueo y Registro de Usuarios
Route::post('sigin', 'AuthController@postLogin');
Route::get('logout', 'AuthController@getLogout');
Route::get('registro', 'AuthController@getRegistro')->before('auth');
Route::post('registrar', 'AuthController@register');
