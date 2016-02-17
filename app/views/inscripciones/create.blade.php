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
			<ul>
				@foreach($errors->all() as $error)
					<li>{{ $error }}</li>
				@endforeach
			</ul>			
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
		<ul>
			<li>Banco General</li>
			<li>Cuenta Corriente</li>
			<li>03-30-01-025021-7</li>
			<li>Hospital Chiriquí, S.A.</li> 
		</ul>
		<p>Enviar confirmación del pago de la transacción al correo: </p> <a href="mailto:relacionespublicas@hospitalchiriqui.com" class="alert-link">relacionespublicas@hospitalchiriqui.com</a>
	</div>
	<h3><i class="fa fa-info-circle"></i> Información General</h3>
	{{ Form::open(['route' => 'inscripcion.store', 'method' => 'POST'])}}		
		<div class="row">
			<div class="form-group col-sm-4">
				{{ Form::label('cedula', 'Cédula o RUC:', ['class' => 'control-label']) }}
				{{ Form::text('cedula', null, ['class' => 'form-control', 'placeholder' => 'Cédula o RUC']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('primer_nombre', 'Primer Nombre:', ['class' => 'control-label']) }}
				{{ Form::text('primer_nombre', null, ['class' => 'form-control', 'placeholder' => 'Primer Nombre']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('segundo_nombre', 'Segundo Nombre:', ['class' => 'control-label']) }}
				{{ Form::text('segundo_nombre', null, ['class' => 'form-control', 'placeholder' => 'Segundo Nombre']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('apellido_paterno', 'Apellido Paterno:', ['class' => 'control-label']) }}
				{{ Form::text('apellido_paterno', null, ['class' => 'form-control', 'placeholder' => 'Apellido Paterno']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('apellido_materno', 'Apellido Materno:', ['class' => 'control-label']) }}
				{{ Form::text('apellido_materno', null, ['class' => 'form-control', 'placeholder' => 'Apellido Materno']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('sexo', 'Sexo:', ['class' => 'control-label']) }}
				{{ Form::select('sexo', ['0' => 'Femenino', '1' => 'Masculino'], null, ['class' => 'form-control']) }}
			</div>
			<div class="form-group col-sm-4">				
				{{ Form::label('tipo_participante', 'Tipo de Participante:', ['class' => 'control-label']) }}
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