@extends ('layout')

@section ('title') Usuarios @stop

@section ('content')
<h1>
  <center>Usuarios</center>
</h1><hr>
     <div class="row">
      <div class="col-md-12 col-sm-12 col-lg-12">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Usuarios</h3>
            <div class="pull-right">
              <span class="clickable filter" data-toggle="tooltip" title="Buscar Cliente" data-container="body">
                <i class="glyphicon glyphicon-filter"></i>
              </span>
            </div>
          </div>
          <div class="panel-body" style="display:block;">
            <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filtrar Usuario" /><br>
	        	
        	  <div class="table-responsive overthrow" style=" position:relative; margin:0px auto; padding:0px;overflow:auto;width:100%;height:100%;max-height:240px;">
              <table class="table table-bordered table-hover" id="dev-table">        
                <thead>
	                <tr class="info">
	                    <th>#</th>
	                    <th>Usuario</th>
	                    <th>Rol</th>
	                    <th>Acciones</th>
	                </tr>
	             </thead>
	             <tbody>
                {{--*/ $x = 1; /*--}}
                @foreach (User::all() as $usuario)
                  <tr>
                      <td>{{ $x++ }}.</td>
                      <td>{{ $usuario->user }}</td>
                      <td>{{ Rol::find($usuario->id_rol)->rol }}</td>
                      <td><a href="{{ route('usuario.edit', $usuario->id) }}" class="btn btn-primary btn-sm" data-toggle="tooltip"  title="Editar Datos"><span class="glyphicon glyphicon-pencil"></span></a></td>
                  </tr>
                @endforeach
                </tbody> 
              </table>
            </div>
            <div class="clear"></div>
        </div>
      </div>
    </div>   
{{ Form::model($datos['usuario'],$datos['form'], array('role' => 'form')) }}
	<div class="container">
	<h3>Información Personal</h3><br>   
	</div>
  
    <div class="form-group col-sm-12 col-md-12 col-lg-12">
      {{ Form::label('user', 'Usuario') }}
      {{ Form::text('user', null, array('placeholder' => 'Usuario', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-12 col-md-12 col-lg-12">
      {{ Form::label('pass', 'Contraseña') }}
      {{ Form::text('pass', null, array('placeholder' => 'Contraseña', 'class' => 'form-control')) }}        
    </div>
	<div class="form-group col-sm-12 col-md-12 col-lg-12">
      {{ Form::label('id_rol', 'Rol') }}
      {{ Form::select('id_rol', Rol::where('id', '<>', '3')->lists('rol', 'id')  , $datos['usuario']->id_rol, array('placeholder' => 'Usuario', 'class' => 'form-control', 'required' => 'required')) }}
    </div>

  <div class="form-group col-sm-12 col-md-12 col-lg-12">
    <center>
      {{ Form::button('Salvar', array('type' => 'submit', 'class' => 'btn btn-primary')) }}
      <a href="{{ route('usuario.index') }}" class="btn btn-info">Limpiar Campos</a>
    </center>
  </div>

{{ Form::close() }}
  
 

@stop
