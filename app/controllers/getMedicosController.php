<?php
	class getMedicosController extends BaseController{
		
		public function postDatos() {
			if(Request::ajax()){
				$id = Input::get('medico');

				$data = Medico::find($id);
				$data->fullname = $data->fullname;

				if(!empty($data->id_especialidades_medicas)){
					$data->especialidad = ucwords(strtolower(EspecialidadMedica::where('id_especialidades_medicas', $data->id_especialidades_medicas)->first()->descripcion));
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

				return Response::json($data);
			}
			App::abort(403);
		}
	}
