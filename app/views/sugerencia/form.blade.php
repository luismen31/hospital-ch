@extends ('layout')

@section('title')
	Buzón de Consultas y Sugerencias
@stop

@section ('content')
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<h2 style="text-align:center;font-weight:bold;">Buzón de Consultas y Sugerencias</h2>
				<hr>
				<center>
					<strong>HOSPITAL CHIRIQU&Iacute; S.A.</strong><br>
					<strong>Tel&eacute;fonos: 774-0128</strong> (Central Tel&eacute;fonica)<br>
					<strong>Fax: 777-8073</strong><br>
					<strong>Ave.3ra. Y Calle Central, David, Chiriqu&iacute;, Rep. De Panam&aacute;</strong><br><br>
				</center>
				<div class="row">	
					<div class="col-md-12">
						<center>
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3946.7000405828703!2d-82.4307485731997!3d8.431089151188548!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd79db70dee0e96a6!2sHospital+Chiriqui!5e0!3m2!1ses-419!2s!4v1397282404906" frameborder="0" style="width:100%;max-width:550px;height:400px;border:2px solid #666;margin-bottom:20px;"></iframe>
						</center>
					</div>
				</div>
				{{ $mensaje }}
				<p class="text-center">Utilice tab para avanzar los campos. Todos los campos son importantes.!</p> 
				{{ Form::open(array('route' => 'sugerencia.store', 'method' => 'POST', 'class' => 'form-horizontal'), array('role' => 'form')) }}		
					<div class="form-group">
				      {{ Form::label('nombre', 'Nombre:', array('class' => 'col-sm-4 control-label')) }}
				      <div class="col-sm-6">
				      	{{ Form::text('nombre', null, array('placeholder' => 'Nombre', 'class' => 'form-control', 'required' => 'required')) }}	     
				      </div>
					</div>
					<div class="form-group">
				      	{{ Form::label('email', 'Email:', array('class' => 'col-sm-4 control-label')) }}
						<div class="col-sm-6">
				      		{{ Form::text('email', null, array('placeholder' => 'Email', 'class' => 'form-control', 'required' => 'required')) }}
						</div>
					</div>
					<div class="form-group">
				      	{{ Form::label('telefono', 'Teléfono:', array('class' => 'col-sm-4 control-label')) }}
						<div class="col-sm-6">
				      		{{ Form::text('telefono', null, array('placeholder' => 'Teléfono', 'class' => 'form-control')) }}
						</div>
					</div>
					<div class="form-group">
						{{ Form::label('ciudad', 'Ciudad:', array('class' => 'col-sm-4 control-label')) }}
						<div class="col-sm-6">
				      		{{ Form::text('ciudad', null, array('placeholder' => 'Ciudad', 'class' => 'form-control')) }}
						</div>
					</div>
					{{--*/ $width = '170'; $background = '5cca78';/*--}}
					{{--
							Estructura para el captcha
							Captcha::getImage($count, $width, $height, $backgroundColor, $quality)
					--}}
					<center><img src="{{Captcha::getImage(null, $width, null, $background, null)}}"></center><br>
					<div class="form-group">
						{{ Form::label('codigo', 'Código:', array('class' => 'col-sm-4 control-label')) }}
						<div class="col-sm-6">
							{{ Form::text('codigo', null, array('placeholder' => 'Código', 'class' => 'form-control')) }}
						</div>		
					</div>
					@if($errors->has())
                    <p style="color:#f00;text-align:center;"> {{ $errors->first('codigo') }}</p>                  
                @endif 				
					<div class="form-group">
				    	{{ Form::label('mensaje', 'Mensaje:', array('class' => 'col-sm-4 control-label')) }}
						<div class="col-sm-6">
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
			</div>
		</div>

@stop