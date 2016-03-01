@extends ('layout')

@section('title')
	Hospital Chiriquí - Registro de Nacimientos de Beb&eacute;
@stop

@section ('content')
	@include('slider')
	
	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Hospitalizaci&oacute;n</h2>
    </div>

	<div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 line-left">
			<div class="col-md-6">
				<h2 class="subtitulo">Registro de Nacimiento de beb&eacute;s</h2>
				<p class="text-justify">
					Si Usted toma la decisi&oacute;n de que su hijo nazca en nuestro hospital, debe conocer que nuestra entidad les facilita este tr&eacute;mite totalmente gratis.
					El proceso es el siguiente:
				</p>
				<div class="container-fluid">
					<ul>
					   <li class="text-justify">Luego del nacimiento del beb&eacute;, los padres deben acudir al departamento de administraci&oacute;n con las c&eacute;dula de ambos y toda la informaci&oacute;n referente al beb&eacute;, (Nombre, hora y fecha de nacimiento, tipo de sangre, peso al nacer y duraci&oacute;n del embarazo).</li>
					   <li class="text-justify">El formulario ser&aacute; completado por la asistente administrativa, quien entregar&aacute; una fotocopia a los padres y enviar&aacute; el formulario original al Registro Civil.</li>
					   <li class="text-justify">Los Padres deben presentarse en el Registro civil dos d&iacute;as despu&eacute;s de haber completado el formulario y llevar los siguientes documentos:</li>
					</ul>
				</div>
				<div class="container-fluid">
					<ul>
						<div class="container-fluid">
						   <ul>
							 <li>C&eacute;dula de ambos en original</li>
							 <li>Copia del formulario </li>
							 <li>Dos testigos (personas paname&ntilde;as y que no sean familiares de los padres del beb&eacute;). </li>
						   </ul>
						</div>
					</ul>
				</div>
				<p class="text-justify">En el registro Civil los padres deben manifestar que van a terminar el proceso de registro de su bebe nacido en Hospital Chiriqu&iacute;.
					De tener alguna duda favor comunicarse al 777-8042 o al e-mail <a href="mailto:administracion@hospitalchiriqui.com">administraci&oacute;n@hospitalchiriqui.com</a>.
				</p>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/registrobb.jpg" width="90%" class="img-rounded">
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('hospitalizacion')}}"  class="list-group-item"> Habitaciones</a>
                    <a href="{{URL::to('admision')}}"  class="list-group-item"> Admisi&oacute;n</a>
                    <a href="{{URL::to('seguros')}}"  class="list-group-item"> Seguros Nacionales e Internacionales</a>
                    <a href="{{URL::to('registrobb')}}"  class="list-group-item active"> Registro de Nacimiento</a>
                    <li class="dropdown-header">Servicios Hospitalarios</li>
                    <a href="{{URL::to('hemodialisis')}}"  class="list-group-item"> Hemodi&aacute;lisis</a> 
                    <a href="{{URL::to('cuidados')}}"  class="list-group-item"> Cuidados Intensivos</a> 
                    <a href="{{URL::to('quirofano')}}"  class="list-group-item"> Quir&oacute;fano</a>
                    <a href="{{URL::to('laboratorio')}}"  class="list-group-item"> Laboratorio </a>
                    <a href="{{URL::to('rayosx')}}"  class="list-group-item"> Radiolog&iacute;a</a> 
                    <a href="{{URL::to('urgencias')}}"  class="list-group-item"> Urgencias</a>
                    <a href="{{URL::to('capilla')}}"  class="list-group-item"> Capilla</a>
                    <a href="{{URL::to('farmacia')}}"  class="list-group-item"> Farmacia</a>
                </ul>
            </div>
		</div>
	</div>
@stop