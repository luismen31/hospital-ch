@extends ('layout')

@section ('title') Clientes Frecuentes @stop

@section ('content')
<h1>
  <center>Clientes Frecuentes</center>
</h1><hr>
     <div class="row">
      <div class="col-md-12 col-sm-12 col-lg-12">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title">Lista de Clientes Frecuentes</h3>
            <div class="pull-right">
              <span class="clickable filter" data-toggle="tooltip" title="Buscar Cliente" data-container="body">
                <i class="glyphicon glyphicon-filter"></i>
              </span>
            </div>
          </div>
          <div class="panel-body" style="display:block;">
            <input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filtrar Cliente" /><br>
	        	
        	  <div class="overthrow" style="height:250px;">
              <table class="table table-bordered table-hover table-fixed-header" cellpadding="0" cellspacing="0" id="dev-table">
                <thead>
	                <tr class="info">
	                    <th>#</th>
	                    <th>Nombre Completo</th>
	                    <th>Fecha Nacimiento</th>
	                    <th>Celular</th>
	                    <th>Telefono Residencia</th>
	                    <th>Telefono Oficina</th>
	                    <th>E-Mail</th>
	                    <th></th>
	                </tr>
	             </thead>
	             <tbody>
                {{--*/ $x = 1; /*--}}
                @foreach (Cliente::all() as $cliente)
                  <tr>
                      <td>{{ $x++ }}.</td>
                      <td>{{ $cliente->primer_nombre.' '.$cliente->segundo_nombre.' '.$cliente->primer_apellido.' '.$cliente->segundo_apellido }}</td>
                      <td>{{ $cliente->fecha_nacimiento }}</td>
                      <td>{{ $cliente->celular }}</td>
                      <td>{{ $cliente->telefono_residencia }}</td>
                      <td>{{ $cliente->telefono_oficina }}</td>
                      <td>{{ $cliente->email }}</td>
                      <td align="center">
                          <a href="{{ route('cliente.edit', $cliente->id) }}" class="btn btn-primary btn-sm" style="margin:3px 0px;" data-toggle="tooltip" title="Editar"><span class="glyphicon glyphicon-pencil"></span></a>                         
                      </td>
                  </tr>
                @endforeach
                </tbody> 
              </table>
            </div>
        </div>
      </div>
    </div>   
{{ Form::model($data['cliente'], $data['form'], array('role' => 'form')) }}
<h3>Información Personal</h3><br>   
  <div class="row">
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('cedula', 'N&uacute;mero de C&eacute;dula') }}
      {{ Form::text('cedula', null, array('placeholder' => 'N&uacute;mero de C&eacute;dula', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('seguro_social', 'Seguro Social') }}
      {{ Form::text('seguro_social', null, array('placeholder' => 'Seguro Social', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('primer_nombre', 'Primer Nombre') }}
      {{ Form::text('primer_nombre', null, array('placeholder' => 'Primer Nombre', 'class' => 'form-control', 'required' => 'required')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('segundo_nombre', 'Segundo Nombre') }}
      {{ Form::text('segundo_nombre', null, array('placeholder' => 'Segundo Nombre', 'class' => 'form-control')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('primer_apellido', 'Primer Apellido') }}
      {{ Form::text('primer_apellido', null, array('placeholder' => 'Primer Apellido', 'class' => 'form-control', 'required' => 'required')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('segundo_apellido', 'Segundo Apellido') }}
      {{ Form::text('segundo_apellido', null, array('placeholder' => 'Segundo Apellido', 'class' => 'form-control')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('fecha_nacimiento', 'Fecha de Nacimiento') }}
      {{ Form::date('fecha_nacimiento', $data['cliente']->fecha_nacimiento, array('class' => 'form-control', 'min' => '1950-01-01', 'max' => '2050-12-31')) }}
    </div>
    {{--Orden de Datos en los select: Name,arreglo con valores, value, arreglo con la clase de diseño--}}
 
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('sexo', 'Sexo:') }}
      {{ Form::select('sexo',  array('null' => 'SELECCIONE EL SEXO', '0' => 'FEMENINO', '1' => 'MASCULINO'), $data['cliente']->femenino, array('class' => 'form-control')); }}    
    </div>  
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('id_tipo_sanguineo', 'Tipo de Sangre:') }}
      {{ Form::select('id_tipo_sanguineo',  array('0' => 'SELECCIONE EL TIPO DE SANGRE') + TipoSangre::lists('tipo_sangre', 'id'), $data['cliente']->id_tipo_sangre, array('class' => 'form-control')); }}    
    </div>   
   </div>
   <div class="row" style="margin-top:0px;">
	{{--Datos de Nacimiento--}}
	<h3>Datos de Contacto Dirección</h3><br>   
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('celular', 'Celular:') }}
      {{ Form::text('celular', $data['cliente']->celular, array('placeholder' => 'Celular', 'class' => 'form-control')) }}        
    </div>
	<div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('telefono_residencia', 'Telefono Residencia:') }}
      {{ Form::text('telefono_residencia', $data['cliente']->telefono_residencia, array('placeholder' => 'Telefono Residencia', 'class' => 'form-control')) }}        
    </div>
	<div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('telefono_oficina', 'Telefono Oficina:') }}
      {{ Form::text('telefono_oficina', $data['cliente']->telefono_oficina, array('placeholder' => 'Telefono Oficina', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('email', 'E-Mail:') }}
      {{ Form::text('email', $data['cliente']->email, array('placeholder' => 'E-Mail', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
	  {{ Form::label('direccion', 'Dirección:') }}
      {{ Form::textarea('direccion', $data['cliente']->direccion, array('placeholder' => 'Dirección', 'class' => 'form-control', 'size' => '1x1')) }}        
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
