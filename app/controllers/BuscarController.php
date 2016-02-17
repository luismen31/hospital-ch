<?php

class BuscarController extends \BaseController {

	//Funcion que recibe el id de la provincia y devuelve los distritos correspondientes de esa provincia
    public function getDistrito()
    {
        $provincia = Input::get('provincia');
        $distrito = Distrito::where('id_provincia',$provincia);
        return ($distrito->get(['id_distrito', 'distrito']));
    }
    //Funcion que recibe el id del distrito y devuelve los corregimientos correspondientes de ese distrito
    public function getCorregimiento()
    {    
        $distrito = Input::get('distrito');
        $corregimiento = Corregimiento::where('id_distrito',$distrito);
        return ($corregimiento->get(['id_corregimiento', 'corregimiento']));
    }

    public function getClientesInscritos(){
        if(!Request::ajax()) App::abort(403);

        $data = array();
        $inputs = Input::all();

        $clientes = \DB::table('clientes_inscripcion')        
        ->where('id', '>', 0)
        ->select(\DB::raw('SQL_CALC_FOUND_ROWS *'))
        ->take($inputs['limit'])->skip($inputs['offset'])
        ->orderBy('created_at', 'DESC')->get();   

        $cantidad = \DB::select(\DB::raw("SELECT FOUND_ROWS() AS total;"));
        $cantidad = $cantidad[0]->total;
        $n = 1;

        foreach ($clientes as $cliente) {
            if($cliente->estado == 0){
                $status = '<strong class="text-danger">Pendiente</strong>';
                $token = csrf_token();
                $form = '
                    <form method="POST" action="'.route("inscripcion.update", $cliente->id).'">                        
                        <input type="hidden" name="_method" value="PATCH">
                        <input type="hidden" name="_token" value="'.$token.'">
                        <button type="submit" class="btn btn-success btn-sm"><i class="fa fa-check"></i> Inscribir</button>
                    </form>
                ';
            }else{
                $status = '<strong class="text-success">Inscrito</strong>';
                $form = '<button class="btn btn-success btn-sm disabled">Inscrito</button>';
               
            }
            $detalle =DetalleInscripcion::where('id_cliente_inscripcion', $cliente->id)->first();
            $monto = ($detalle != null) ? $detalle->monto : 0;
            $codigo = ($detalle != null) ? $detalle->codigo_slip : 'No ha registrado';

            $data[] = [
                'num' => $n++,
                'ced' => $cliente->cedula,
                'cli' => $cliente->primer_nombre.' '.$cliente->apellido_paterno,
                'tipo' => TipoParticipante::where('id', $cliente->id_tipo_participante)->first()->tipo_participante,
                'cod' => $codigo,
                'din' => $monto,
                'std' => $status,
                'act' => $form
            ];
        }

        return Response::json(['total' => $cantidad, 'rows' => $data]);
    }
}
