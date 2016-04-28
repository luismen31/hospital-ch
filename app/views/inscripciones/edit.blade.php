@extends ('layout')
{{--*/$y = date('Y');/*--}}
@section ('title')  Congreso Médico {{$y}} @stop

@section ('content')
	<h1>
		@if(Auth::user()->id_rol == 7)
			<a href="{{ url('menu') }}" class="pull-left btn btn-primary" title="Regresar"><i class="fa fa-arrow-left"></i></a>
		@else
			<a href="{{ url('/') }}" class="pull-left btn btn-primary" title="Regresar"><i class="fa fa-arrow-left"></i></a>	
		@endif 
			
	  <center> Congreso Médico {{ $y }}</center>
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

	@if(Session::has('success'))
		<div class="alert alert-success">
			<h4><strong>Mensaje:</strong></h4>
			<p>{{ Session::get('success') }}</p>
		</div>
	@endif

	<h3><i class="fa fa-info-circle"></i> Información Del Cliente</h3>
	<div class="row">
		<div class="col-sm-{{ ($cliente->estado == 0) ? '6' : '3' }}">
			<div class="alert alert-{{ ($cliente->estado == 0) ? 'danger' : 'success' }}">
				<label>Estado:</label>
				<p style="font-weight:bold">{{ ($cliente->estado == 0) ? 'No Inscrito' : 'Inscrito' }}</p>			
				@if($cliente->estado == 0)
					<i>"Recuerde registrar su pago dentro del sistema para que pueda ser inscrito al Congreso Médico {{$y}}"</i>
				@endif
			</div>
		</div>
	</div>
	<div class="row">
		<div class="form-group col-sm-3">
			<label>Cédula o RUC:</label>
			<p>{{ $cliente->cedula }} </p>
		</div>
		<div class="form-group col-sm-3">
			<label>Nombre o Nombre de Empresa:</label>
			<p>{{ $cliente->nombre }} </p>
		</div>
		<div class="form-group col-sm-3">
			<label>Teléfono:</label>
			<p>{{ (!empty($cliente->telefono)) ? $cliente->telefono : 'No Especificado'}} </p>
		</div>
		<div class="form-group col-sm-3">
			<label>Celular:</label>
			<p>{{ (!empty($cliente->celular)) ? $cliente->celular : 'No Especificado'}} </p>
		</div>
		<div class="form-group col-sm-3">
			<label>Correo Electrónico:</label>
			<p>{{ (!empty($cliente->email)) ? $cliente->email : 'No Especificado'}} </p>
		</div>	
		<div class="form-group col-sm-3">
			<label>Dirección:</label>
			<p>{{ (!empty($cliente->direccion)) ? $cliente->direccion : 'No Especificado'}} </p>
		</div>
	</div>
		



	<h3><i class="fa fa-pencil-square"></i> Registro De Inscripción</h3>
	{{ Form::model($cliente, ['route' => ['inscripcion.update', $cliente->id], 'method' => 'PATCH'])}}	

		<div class="row">				
			<div class="form-group col-sm-4">
				{{ Form::label('fecha_pago', 'Fecha de Pago:',['class' => 'control-label'])}}
				{{ Form::text('fecha_pago', null, ['class' => 'form-control datepicker', 'placeholder' => 'AAAA/MM/DD']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('codigo_slip', 'Código de Slip:',['class' => 'control-label'])}}
				{{ Form::text('codigo_slip', null, ['class' => 'form-control', 'placeholder' => 'Código de Slip']) }}
			</div>
			<div class="form-group col-sm-4">
				{{ Form::label('monto', 'Monto Pagado (B./):',['class' => 'control-label'])}}
				{{ Form::text('monto', null, ['class' => 'form-control', 'placeholder' => 'Monto Pagado']) }}
			</div>			
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-primary">Registrar Slip</button>
		</div>
	{{ Form::close() }}
	
@stop