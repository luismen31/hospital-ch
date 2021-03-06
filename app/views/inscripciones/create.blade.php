@extends ('layout')
{{--*/$y = date('Y');/*--}}
@section ('title') Inscripción Congreso Médico {{$y}} @stop

@section ('content')
	<h1>
		<a href="{{ url('/') }}" class="pull-left btn btn-primary" title="Regresar"><i class="fa fa-arrow-left"></i></a> 	
	  <center>Inscripción Congreso Médico {{ $y }}</center>
	</h1><hr>

	@if(count($errors) > 0)
		<div class="alert alert-danger">
			<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true"><i class="fa fa-times"></i></span><span class="sr-only">Cerrar</span></button>
			<strong>Por favor proceda a corregir los siguientes errores</strong>
			
			<div class="container-fluid">
				<ul>
					@foreach($errors->all() as $error)
						<li>{{ $error }}</li>
					@endforeach
				</ul>			
			</div>
		</div>
	@endif
	
	<div class="alert alert-info" role="alert">
		<h4 class="title-info">
			<i class="fa fa-info-circle"></i> <strong>INFORMACIÓN</strong>
		</h4>
		<strong>Si ya se se encuentra registrado, puede acceder desde el siguiente botón: </strong>
		<a href="{{url('system_resume')}}" class="btn btn-primary "><i class="fa fa-sign-in"></i> Iniciar Sesión</a>
	</div>
	<div class="alert alert-info" role="alert">		
		<h4 class="title-info">
			<i class="fa fa-info-circle"></i> <strong>INFORMACIÓN</strong>
		</h4>
		<strong>Información para pagos de Banca en Línea:</strong>
		<div class="container-fluid">
			<ul>
				<li>Banco General</li>
				<li>Cuenta Corriente</li>
				<li>03-30-01-025021-7</li>
				<li>Hospital Chiriquí, S.A.</li> 
			</ul>
		</div>	
		<p>Enviar confirmación del pago de la transacción al correo: </p> <a href="mailto:relacionespublicas@hospitalchiriqui.com" class="alert-link">relacionespublicas@hospitalchiriqui.com</a>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="modal-costo" tabindex="-1" role="dialog" aria-labelledby="labelMedico" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content style-modal">
	      <div class="modal-header fondo-head">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times"></i></span></button>
	        <h3 class="modal-title" style="font-weight:bold;">Costo de Congreso</h3>
	      </div>
	      <div class="modal-body fondo-body">
	      	<div class="table-responsive">
	        	<table class="table table-bordered table-hover" style="font-size:12px;background:#fff;">
	        		<thead>
	        			<tr class="info">
	        				<th>DESCRIPCIÓN</th>
	        				<th>MARZO-ABRIL 2016</th>
	        				<th>MAYO-JUNIO 2016</th>
	        				<th>EN SITIO (HCH)</th>
	        			</tr>
	        		</thead>
	        		<tbody>
	        			<tr class="active">
	        				<td></td>
	        				<td>(PAGINA VIA WEB)</td>
	        				<td>(PAGINA VIA WEB)</td>
	        				<td></td>
	        			</tr>
	        			<tr class="success">
	        				<td><strong>MEDICOS SOCIOS</strong></td>
	        				<td><strong>CORTESIA</strong></td>
	        				<td><strong>CORTESIA</strong></td>
	        				<td><strong>CORTESIA</strong></td>
	        			</tr>
	        			<tr class="success">
	        				<td>NO SOCIOS</td>
	        				<td>65.00</td>
	        				<td>75.00</td>
	        				<td>85.00</td>
	        			</tr>
	        			<tr class="success">
	        				<td>MEDICO RESIDENTE</td>
	        				<td>25.00</td>
	        				<td>35.00</td>
	        				<td>45.00</td>
	        			</tr>
	        			<tr>
	        				<th colspan="4"><center>CORTESIA LOS PRIMEROS 40  CUPOS  (MEDICOS RESIDENTES)</center></th>
	        			</tr>
	        			<tr class="warning">
	        				<td>ENFERMERA (O)</td>
	        				<td>25.00</td>
	        				<td>35.00</td>
	        				<td>45.00</td>
	        			</tr>
	        			<tr class="warning">
	        				<td>TECNICO</td>
	        				<td>25.00</td>
	        				<td>35.00</td>
	        				<td>45.00</td>
	        			</tr>
	        			<tr class="warning">
	        				<td>ORTOPEDIA</td>
	        				<td>25.00</td>
	        				<td>35.00</td>
	        				<td>45.00</td>
	        			</tr>
	        			<tr class="warning">
	        				<td>AUXILIARES</td>
	        				<td>25.00</td>
	        				<td>35.00</td>
	        				<td>45.00</td>
	        			</tr>
	        			<tr class="warning">
	        				<td>ESTUDIANTES DE MEDICINA</td>
	        				<td>25.00</td>
	        				<td>35.00</td>
	        				<td>45.00</td>
	        			</tr>
	        		</tbody>
	        	</table>
	      	</div>
	      </div>
	    </div>
	  </div>
	</div>

	<h3><i class="fa fa-info-circle"></i> Información General</h3>
	{{ Form::open(['route' => 'inscripcion.store', 'method' => 'POST'])}}		
		<div class="row">
			<div class="form-group col-sm-4">
				{{ Form::label('cedula', 'Cédula o RUC:', ['class' => 'control-label']) }}
				{{ Form::text('cedula', null, ['class' => 'form-control', 'placeholder' => 'Cédula o RUC']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('nombre', 'Nombre o Nombre de Empresa:', ['class' => 'control-label']) }}
				{{ Form::text('nombre', null, ['class' => 'form-control', 'placeholder' => 'Nombre o Nombre de Empresa']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('sexo', 'Sexo:', ['class' => 'control-label']) }}
				{{ Form::select('sexo', ['0' => 'Femenino', '1' => 'Masculino'], null, ['class' => 'form-control']) }}
			</div>
			<div class="form-group col-sm-4">				
				{{ Form::label('tipo_participante', 'Tipo de Participante: ', ['class' => 'control-label']) }}<a href="#" data-toggle="modal" data-target="#modal-costo" class="btn btn-link pull-right"><strong>Costos</strong> <i class="fa fa-external-link"></i></a>
				{{ Form::select('tipo_participante', array('0' => 'Seleccione el Participante') + TipoParticipante::lists('tipo_participante', 'id'), null, ['class' => 'form-control']) }}
			</div>			
			<div class="container-fluid">
				<div class=" col-sm-8 well well-sm"  style="background:#d9edf7;">
					<div class="form-group col-sm-6">
						{{ Form::label('usuario', 'Usuario:')}}
						{{ Form::text('usuario', null, ['class' => 'form-control', 'placeholder' => 'Usuario']) }}			
					</div>
					<div class="form-group col-sm-6">
						{{ Form::label('password', 'Contraseña:')}}
						{{ Form::password('password', ['class' => 'form-control', 'placeholder' => 'Contraseña']) }}			
					</div>
				</div>
			</div>
		</div>

		<h3><i class="fa fa-phone"></i> Información de Contacto</h3>
		<div class="row">
			<div class="form-group col-sm-4">
				{{ Form::label('telefono', 'Teléfono:', ['class' => 'control-label']) }}
				{{ Form::text('telefono', null, ['class' => 'form-control', 'placeholder' => 'Teléfono']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('celular', 'Celular:', ['class' => 'control-label']) }}
				{{ Form::text('celular', null, ['class' => 'form-control', 'placeholder' => 'Celular']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('email', 'Correo Electrónico:', ['class' => 'control-label']) }}
				{{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => 'Correo Electrónico']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('facebook', 'Facebook:', ['class' => 'control-label']) }}
				{{ Form::text('facebook', null, ['class' => 'form-control', 'placeholder' => 'Facebook']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('twitter', 'Twitter:', ['class' => 'control-label']) }}
				{{ Form::text('twitter', null, ['class' => 'form-control', 'placeholder' => 'Twitter']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('instagram', 'Instagram:', ['class' => 'control-label']) }}
				{{ Form::text('instagram', null, ['class' => 'form-control', 'placeholder' => 'Instagram']) }}
			</div>
		</div>
		<h3><i class="fa fa-map-marker"></i> Dirección</h3>
		<div class="row">			
			<div class="form-group col-sm-4">
				{{ Form::label('id_provincia', 'Provincia:', ['class' => 'control-label']) }}
				{{ Form::select('id_provincia', ['0' => 'Seleccione Provincia'] + Provincia::lists('provincia', 'id_provincia'), 8, ['class' => 'form-control', 'id' => 'id_provincia']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('id_distrito', 'Distrito:', ['class' => 'control-label']) }}
				{{ Form::select('id_distrito', ['0' => 'Seleccione Distrito'], null, ['class' => 'form-control', 'id' => 'id_distrito']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('id_corregimiento', 'Corregimiento:', ['class' => 'control-label']) }}
				{{ Form::select('id_corregimiento', ['0' => 'Seleccione Corregimiento'], null, ['class' => 'form-control', 'id' => 'id_corregimiento']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('direccion', 'Dirección:') }}
				{{ Form::textarea('direccion', null, ['class' => 'form-control', 'size' => '1x3']) }}
			</div>
		</div>		
		<div class="row">
			<div class="form-group col-sm-offset-5 col-sm-6">
				<button type="submit" class="btn btn-primary">Registrarse</button>
			</div>
		</div>
	{{ Form::close() }}
@stop