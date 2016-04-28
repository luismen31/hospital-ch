<?php

class Medico extends Eloquent {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	*/
	protected $table = 'medicos';

	//Obtiene todos los medicos
	public function allMedicos(){
		$medicos = $this->on('plagetri')->where('id', '>', 0)->select('id', 'primer_nombre', 'apellido_paterno', 'foto', 'id_especialidades_medicas', 'id_ubicacion')->orderBy('id_ubicacion', 'DESC')->get();
		foreach ($medicos as $medico) {
			$medico->ubicacion = $this->getUbicacion($medico->id_ubicacion);
			$medico->especialidad = $this->getEspecialidad($medico->id_especialidades_medicas);
		}

		$datos = array("medicos" => $medicos->toArray());
		
		return Response::json($datos);
	}

	//obtiene el medico en especifico
	public function getMedico($id){
		$medico = $this->on('plagetri')->where('id', $id)->select('id', 'primer_nombre', 'apellido_paterno', 'foto', 'id_especialidades_medicas', 'id_ubicacion', 'telefono', 'celular', 'email')->first();		
		$medico->ubicacion = $this->getUbicacion($medico->id_ubicacion);
		$medico->especialidad = $this->getEspecialidad($medico->id_especialidades_medicas);

		//$datos = array('medico' => $medico->toArray());
		return Response::json($medico);
	}

	//Setea la ubicacion si no tiene registrado el medico
	private function getUbicacion($id_ubicacion){
		$ubicacion = (empty($id_ubicacion)) ? 'Otras' : Ubicacion::on('plagetri')->where('id', $id_ubicacion)->first()->ubicacion;
		return $ubicacion;
	}

	//Setea la especialidad si no tiene registrado el medico
	private function getEspecialidad($id_especialidad){
		$especialidad = (empty($id_especialidad)) ? 'No Definida' : EspecialidadMedica::on('plagetri')->where('id_especialidades_medicas', $id_especialidad)->first()->descripcion;
		return $especialidad;
	}
}

?>