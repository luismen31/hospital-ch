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
	        	
        	  <div class="overthrow" style="height:250px;">
              <table class="table table-bordered table-hover table-fixed-header" cellpadding="0" cellspacing="0" id="dev-table">
                <thead>
	                <tr class="info">
	                    <th>#</th>
	                    <th>Usuario</th>
	                </tr>
	             </thead>
	             <tbody>
                {{--*/ $x = 1; /*--}}
                @foreach (User::all() as $usuario)
                  <tr>
                      <td>{{ $x++ }}.</td>
                      <td>{{ $usuario->user }}</td>
                  </tr>
                @endforeach
                </tbody> 
              </table>
            </div>
            <div class="clear"></div>
        </div>
      </div>
    </div>   
{{ Form::open(array('route' => 'usuario.store', 'method' => 'post'), array('role' => 'form')) }}
<h3>Información Personal</h3><br>   
  <div class="row">
    <div class="form-group col-sm-12 col-md-12 col-lg-12">
      {{ Form::label('usuario', 'Usuario') }}
      {{ Form::text('usuario', null, array('placeholder' => 'Usuario', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-12 col-md-12 col-lg-12">
      {{ Form::label('pass', 'Contraseña') }}
      {{ Form::text('pass', null, array('placeholder' => 'Contraseña', 'class' => 'form-control')) }}        
    </div>
  </div>

  <div class="form-group col-sm-12 col-md-12 col-lg-12">
    <center>
      {{ Form::button('Salvar', array('type' => 'submit', 'class' => 'btn btn-primary')) }}
      <a href="{{ route('cliente.index') }}" class="btn btn-info">Limpiar Campos</a>
    </center>
  </div>

{{ Form::close() }}
  
 

@stop
