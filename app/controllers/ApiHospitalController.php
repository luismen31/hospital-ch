<?php

class ApiHospitalController extends \BaseController {

	//Obtiene todos los medicos
	public function getAllMedics(){
		$medico = new Medico;
		return $medico->allMedicos();
	}

	//Obtiene el medico seleccionado
	public function getMedico($id){
		$medico = new Medico;
		return $medico = $medico->getMedico($id);
	}

}
