@extends ('layout')

@section('title')
	Buzón de Consultas y Sugerencias
@stop

@section ('content')
		<center>
			<strong>HOSPITAL CHIRIQU&Iacute; S.A.</strong><br>
			<strong>Tel&eacute;fonos: 774-0128</strong> (Central Tel&eacute;fonica)<br>
			<strong>Fax: 777-8073</strong><br>
			<strong>Ave.3ra. Y Calle Central, David, Chiriqu&iacute;, Rep. De Panam&aacute;</strong><br><br>
		</center>
		{{ $mensaje }}
		{{ Form::open(array('route' => 'sugerencia.store', 'method' => 'POST'), array('role' => 'form')) }}
			<div class="row">
				<div class="form-group col-sm-4 col-md-4 col-lg-4">
			      {{ Form::label('nombre', 'Nombre:') }}
			      {{ Form::text('nombre', null, array('placeholder' => 'Nombre', 'class' => 'form-control', 'required' => 'required')) }}
			    </div>
				<div class="form-group col-sm-4 col-md-4 col-lg-4">
			      {{ Form::label('email', 'Email:') }}
			      {{ Form::text('email', null, array('placeholder' => 'Email', 'class' => 'form-control', 'required' => 'required')) }}
			    </div>
				<div class="form-group col-sm-4 col-md-4 col-lg-4">
			      {{ Form::label('telefono', 'Teléfono:') }}
			      {{ Form::text('telefono', null, array('placeholder' => 'Teléfono', 'class' => 'form-control')) }}
			    </div>
				<div class="form-group col-sm-4 col-md-4 col-lg-4">
			      {{ Form::label('ciudad', 'Ciudad:') }}
			      {{ Form::text('ciudad', null, array('placeholder' => 'Ciudad', 'class' => 'form-control')) }}
			    </div>
			    <div class="form-group col-sm-4 col-md-4 col-lg-4">
			    	{{ Form::label('mensaje', 'Mensaje:') }}
			    	{{ Form::textarea('mensaje', null, array('placeholder' => 'Mensaje', 'class' => 'form-control', 'required' => 'required', 'size' => '3x3')) }}        
			    </div>
			</div>
			<div class="form-group col-sm-12 col-md-12 col-lg-12">
			    <center>
			      {{ Form::button('Enviar', array('type' => 'submit', 'class' => 'btn btn-primary')) }}
			    </center>
 			</div>
		{{ Form::close() }}

		 <div class="text-center"><br><br>
			<strong>Sugerencias</strong>
			<p>**************************************<br>
			Sus sugerencias seran revizadas por el personal de <br>
			administraci&oacute;n del Hospital Chiriqu&iacute; y su informacion quedara en <br>
			estricta privacidad. <br>
			************************************** </p>
		</div>

@stop