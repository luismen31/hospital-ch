<?php
	class getMedicosController extends BaseController{
		
		public function postDatos() {
			if(Request::ajax()){
				$id = Input::get('medico');

				$data = DB::connection('plagetri')->select('SELECT * FROM medicos WHERE id = :id', ['id' => $id]);
				
				if(!empty($data[0]->id_especialidades_medicas)){
					$data[0]->especialidad = ucfirst(strtolower(EspecialidadMedica::where('id_especialidades_medicas', $data[0]->id_especialidades_medicas)->first()->descripcion));
				}else{
					$data[0]->especialidad = "No tiene especialidad";
				}
				if(!empty($data[0]->id_ubicacion)){
					$data[0]->ubicacion = Ubicacion::where('id', $data[0]->id_ubicacion)->first()->ubicacion;
				}else{
					$data[0]->ubicacion = "Otra";
				}
				if(!empty($data[0]->observacion)){
					$data[0]->observacion = ucfirst($data[0]->observacion);
				}else{
					$data[0]->observacion = "Sin información";
				}
				
				$datos = array(
					'fullname' => 	$data[0]->primer_nombre.' '.$data[0]->apellido_paterno,
					'especialidad' => $data[0]->especialidad,
					'ubicacion' => $data[0]->ubicacion,
					'extension' => $data[0]->extension,
					'telefono' => $data[0]->telefono,
					'observacion' => $data[0]->observacion			
				);

				return Response::json($datos);
			}
			App::abort(403);
		}
	}
