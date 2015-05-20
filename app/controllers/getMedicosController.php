<?php
	class getMedicosController extends BaseController{
		
		public function postDatos() {
			if(Request::ajax()){
				$id = Input::get('medico');

				$data = Medico::find($id);
				
				if(!empty($data->id_especialidades_medicas)){
					$data->especialidad = ucfirst(strtolower(EspecialidadMedica::where('id_especialidades_medicas', $data->id_especialidades_medicas)->first()->descripcion));
				}else{
					$data->especialidad = "No tiene especialidad";
				}
				if(!empty($data->id_ubicacion)){
					$data->ubicacion = Ubicacion::where('id', $data->id_ubicacion)->first()->ubicacion;
				}else{
					$data->ubicacion = "Otra";
				}
				if(!empty($data->observacion)){
					$data->observacion = ucfirst($data->observacion);
				}else{
					$data->observacion = "Sin información";
				}
				
				$datos = array(
					'fullname' => 	$data->primer_nombre.' '.$data->apellido_paterno,
					'especialidad' => $data->especialidad,
					'ubicacion' => $data->ubicacion,
					'extension' => $data->extension,
					'telefono' => $data->telefono,
					'observacion' => $data->observacion			
				);

				return Response::json($datos);
			}
			App::abort(403);
		}
	}
