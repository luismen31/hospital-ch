@extends ('layout')

@section ('title') Hoja de Vida @stop

@section ('content')
<h1>
  <center>Hoja de Vida</center>
</h1><hr>
@if(!empty(Auth::user()->id_rol))
	@if(Auth::user()->id_rol <> 3)
		<div class="row">
		  <div class="col-md-12 col-sm-12 col-lg-12">
			<div class="panel panel-primary">
			  <div class="panel-heading">
				<h3 class="panel-title">Lista de Colaboradores</h3>
				<div class="pull-right">
				  <span class="clickable filter" data-toggle="tooltip" title="Buscar Colaborador" data-container="body">
					<i class="glyphicon glyphicon-filter"></i>
				  </span>
				</div>
			  </div>
			  <div class="panel-body" style="display:block;">
				<input type="text" class="form-control" id="dev-table-filter" data-action="filter" data-filters="#dev-table" placeholder="Filtrar Colaborador" /><br>
				 <div class="table-responsive overthrow" id="scrollbar" style=" position:relative; margin:0px auto; padding:0px;overflow:hidden;width:100%;height:100%;max-height:240px;">
				  <table class="table table-bordered table-hover" id="dev-table">
					<thead>
					  <tr class="info">
						  <th>#</th>
						  <th>Nombre Completo</th>
						  <th>Celular</th>
						  <th>Telefono Residencia</th>
						  <th>E-Mail</th>
						  <th>Área de Aplicación</th>
						  <th>Estudios</th>
						  <th></th>
					  </tr>
				   </thead>
				   <tbody>
					{{--*/ $x = 1; /*--}}
					@foreach (Colaborador::all() as $colaborador)
					  <tr>
						  <td>{{ $x++ }}.</td>
						  <td>{{ $colaborador->primer_nombre.' '.$colaborador->segundo_nombre.' '.$colaborador->primer_apellido.' '.$colaborador->segundo_apellido }}</td>
						  <td>{{ $colaborador->celular }}</td>
						  <td>{{ $colaborador->telefono_residencia }}</td>
						  <td>{{ $colaborador->email }}</td>
						  @if(!empty($colaborador->id_area_aplicacion))
							<td>{{ AreaAplicacion::where('id', $colaborador->id_area_aplicacion)->first()->area_aplicacion }}</td>
						  @else
							<td>SIN DEFINIR</td>
						  @endif
						  @if(!empty($colaborador->id_estudio))
							<td>{{ Estudio::where('id', $colaborador->id_estudio)->get()->first()->estudio }}</td>
						  @else
							<td>SIN DEFINIR</td>
						  @endif
						  <td align="center">                        
							  <a href="{{ route('colaborador.edit', $colaborador->id) }}" class="btn btn-primary btn-sm" style="margin:3px 0px;" data-toggle="tooltip" title="Editar"><span class="glyphicon glyphicon-pencil"></span></a>
						  </td>
					  </tr>
					@endforeach
					</tbody> 
				  </table>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	@endif
@endif

{{ Form::model($data['colaborador'], $data['form'],array('role' => 'form')) }}

  <h3>Información Personal</h3>
  <div class="row">
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('cedula', 'Número de Cédula:') }}
      {{ Form::text('cedula', $data['colaborador']->cedula, array('placeholder' => 'N&uacute;mero de C&eacute;dula', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('pass', 'Contraseña:') }}
      {{ Form::text('pass', $data['colaborador']->pass, array('placeholder' => 'Contraseña', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('seguro', 'Número de Seguro Social:') }}
      {{ Form::text('seguro', $data['colaborador']->seguro_social, array('placeholder' => 'N&uacute;mero de Seguro Social', 'class' => 'form-control')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('primer_nombre', 'Primer Nombre:') }}
      {{ Form::text('primer_nombre', $data['colaborador']->primer_nombre, array('placeholder' => 'Primer Nombre', 'class' => 'form-control', 'required' => 'required')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('segundo_nombre', 'Segundo Nombre:') }}
      {{ Form::text('segundo_nombre', $data['colaborador']->segundo_nombre, array('placeholder' => 'Segundo Nombre', 'class' => 'form-control')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('primer_apellido', 'Primer Apellido:') }}
      {{ Form::text('primer_apellido', $data['colaborador']->primer_apellido, array('placeholder' => 'Primer Apellido', 'class' => 'form-control', 'required' => 'required')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('segundo_apellido', 'Segundo Apellido:') }}
      {{ Form::text('segundo_apellido', $data['colaborador']->segundo_apellido, array('placeholder' => 'Segundo Apellido', 'class' => 'form-control')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('fecha_nacimiento', 'Fecha de Nacimiento:') }}
      {{ Form::date('fecha_nacimiento', $data['colaborador']->fecha_nacimiento, array('class' => 'form-control', 'min' => '1950-01-01', 'max' => '2020-12-31')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('sexo', 'Sexo:') }}
      {{ Form::select('sexo',  array('null' => 'TIPO DE SEXO', '0' => 'FEMENINO', '1' => 'MASCULINO'), $data['colaborador']->femenino, array('class' => 'form-control')); }}    
    </div> 
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('id_tipo_sanguineo', 'Tipo de Sangre:') }}
      {{ Form::select('id_tipo_sanguineo',  array('0' => 'SELECCIONE EL TIPO DE SANGRE') + TipoSangre::lists('tipo_sangre', 'id'), $data['colaborador']->id_tipo_sangre, array('class' => 'form-control')); }}    
    </div>   
   </div>
   

  <div class="row" style="margin-top:0px;">
	<h3>Datos de Contacto Dirección</h3><br>   
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('celular', 'Celular:') }}
      {{ Form::text('celular', $data['colaborador']->celular, array('placeholder' => 'Celular', 'class' => 'form-control')) }}        
    </div>
	 <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('telefono_residencia', 'Telefono de Residencia:') }}
      {{ Form::text('telefono_residencia', $data['colaborador']->telefono_residencia, array('placeholder' => 'Telefono de Residencia', 'class' => 'form-control')) }}        
    </div>
   <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('telefono_oficina', 'Telefono de Oficina:') }}
      {{ Form::text('telefono_oficina', $data['colaborador']->telefono_oficina, array('placeholder' => 'Telefono de Oficina', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('email', 'E-Mail:') }}
      {{ Form::text('email', $data['colaborador']->email, array('placeholder' => 'E-Mail', 'class' => 'form-control')) }}        
    </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('direccion', 'Dirección:') }}
        {{ Form::textarea('direccion', $data['colaborador']->direccion, array('placeholder' => 'Dirección', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('lugar_residencia', 'Lugar de Residencia:') }}
      {{ Form::text('lugar_residencia', $data['colaborador']->lugar_residencia, array('placeholder' => 'Lugar de Residencia', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('id_nacionalidad', 'Nacionalidad:') }}
      {{ Form::select('id_nacionalidad',  array('0' => 'SELECCIONE LA NACIONALIDAD') + Nacionalidad::lists('nacionalidad', 'id_nacionalidad'), $data['colaborador']->id_nacionalidad, array('class' => 'form-control')); }}    
    </div> 
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('id_estado', 'Estado Civil:') }}
      {{ Form::select('id_estado',  array('0' => 'SELECCIONE EL ESTADO CIVIL') + EstadoCivil::lists('estado_civil', 'id_estado_civil'), $data['colaborador']->id_estado_civil, array('class' => 'form-control')); }}    
    </div> 
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('facebook', 'Facebook:') }}
      {{ Form::text('facebook', $data['colaborador']->facebook, array('placeholder' => 'Facebook', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('twitter', 'Twitter:') }}
      {{ Form::text('twitter', $data['colaborador']->twitter, array('placeholder' => 'Twitter', 'class' => 'form-control')) }}        
    </div>
   </div>


   <div class="row" style="margin-top:0px;">
    <h3>Información Laboral</h3><br> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('aplicacion', 'Área de Aplicación:') }}
        {{ Form::select('aplicacion',  array('0' => 'ÁREA DE APLICACIÓN') + AreaAplicacion::lists('area_aplicacion', 'id'), $data['colaborador']->id_area_aplicacion, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudios', 'Estudios:') }}
        {{ Form::select('estudios',  array('0' => 'ESTUDIOS') + Estudio::lists('estudio', 'id'), $data['colaborador']->id_estudio, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudio_1', 'Estudio 1:') }}
        {{ Form::textarea('estudio_1', $data['estudio_1'], array('placeholder' => 'Estudio 1', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudio_2', 'Estudio 2:') }}
        {{ Form::textarea('estudio_2', $data['estudio_2'], array('placeholder' => 'Estudio 2', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudio_3', 'Estudio 3:') }}
        {{ Form::textarea('estudio_3', $data['estudio_3'], array('placeholder' => 'Estudio 3', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
     <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudio_4', 'Estudio 4:') }}
        {{ Form::textarea('estudio_4', $data['estudio_4'], array('placeholder' => 'Estudio 4', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('experiencia_1', 'Experiencia 1:') }}
        {{ Form::textarea('experiencia_1', $data['experiencia_1'], array('placeholder' => 'Experiencia 1', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('experiencia_2', 'Experiencia 2:') }}
        {{ Form::textarea('experiencia_2', $data['experiencia_2'], array('placeholder' => 'Experiencia 2', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('experiencia_3', 'Experiencia 3:') }}
        {{ Form::textarea('experiencia_3', $data['experiencia_3'], array('placeholder' => 'Experiencia 3', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('experiencia_4', 'Experiencia 4:') }}
        {{ Form::textarea('experiencia_4', $data['experiencia_4'], array('placeholder' => 'Experiencia 4', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
   </div>


  <div class="row" style="margin-top:0px;">
      <h3>Idiomas</h3><br> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('idioma_1', 'Idioma 1:') }}
        {{ Form::select('idioma_1',  array('0' => 'IDIOMA 1') + Idioma::lists('idioma', 'id'), $data['idioma_1'], array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('nivel_1', 'Nivel 1:') }}
        {{ Form::select('nivel_1',  array('0' => 'NIVEL 1') + Nivel::lists('nivel', 'id'), $data['nivel_1'], array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('idioma_2', 'Idioma 2:') }}
        {{ Form::select('idioma_2',  array('0' => 'IDIOMA 2') + Idioma::lists('idioma', 'id'), $data['idioma_2'], array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('nivel_2', 'Nivel 2:') }}
        {{ Form::select('nivel_2',  array('0' => 'NIVEL 2') + Nivel::lists('nivel', 'id'), $data['nivel_2'], array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('idioma_3', 'Idioma 3:') }}
        {{ Form::select('idioma_3',  array('0' => 'IDIOMA 3') + Idioma::lists('idioma', 'id'), $data['idioma_3'], array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('nivel_3', 'Nivel 3:') }}
        {{ Form::select('nivel_3',  array('0' => 'NIVEL 3') + Nivel::lists('nivel', 'id'), $data['nivel_3'], array('class' => 'form-control')); }}    
      </div> 
    </div>

    <div class="row" style="margin-top:0px;">
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('presion', 'Trabajo bajo Presión:') }}
        {{ Form::select('presion',  array('null' => 'BAJO PRESÍON', '0' => 'NO', '1' => 'SI'), $data['colaborador']->presion, array('class' => 'form-control')); }}    
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('licencia', 'Licencia de Conducir:') }}
        {{ Form::select('licencia',  array('null' => 'LICENCIA DE CONDUCIR', '0' => 'NO', '1' => 'SI'), $data['colaborador']->licencia, array('class' => 'form-control')); }}    
      </div> 
    </div>
  <div class="form-group col-sm-12 col-md-12 col-lg-12">
    <center>
      {{ Form::button('Salvar', array('type' => 'submit', 'class' => 'btn btn-primary')) }}
       <a href="{{ route('colaborador.index') }}" class="btn btn-info">Limpiar Campos</a>
    </center>
  </div>

{{ Form::close() }}
  
@stop
