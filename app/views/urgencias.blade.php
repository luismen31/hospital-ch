@extends ('layout')

@section('title')
	Hospital Chiriquí - Urgencias
@stop

@section ('content')
	@include('slider')
	
	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Hospitalizaci&oacute;n</h2>
    </div>

	<div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 line-left">
			<h2 class="subtitulo">Urgencias</h2>
			<p class="text-justify">El cuarto de Urgencias del Hospital Chiriqu&iacute; tiene la visi&oacute;n de brindar a nuestra comunidad la comunidad, atenci&oacute;n m&eacute;dica de la m&aacute;s alta calidad y excelencia; lo cual nos ha posicionado a nivel nacional e internacional como una entidad m&eacute;dica de prestigio y a la vanguardia de la tecnolog&iacute;a. Nuestro personal m&eacute;dico, param&eacute;dico y de enfermer&iacute;a est&aacute;n capacitados para brindar atenci&oacute;n inmediata y personalizada con asertividad y eficacia para cada paciente que lo requiere al ingresar a nuestra instituci&oacute;n las 24 horas, los 365 d&iacute;as del a&ntilde;o.</p><br />
			<div class="row">
				<div class="col-md-6">
					<p class="text-justify">
						<p><strong>Contamos con los siguientes servicios:</strong></p>
						<ul class="text-justify">
						  <li>Controles generales de salud en ni&ntilde;os, adultos y ancianos.</li>
						  <li>Atenci&oacute;n de urgencia por m&eacute;dicos especialistas.</li>
						  <li>Atenci&oacute;n inmediata de pacientes en estado cr&iacute;tico y su manejo oportuno personalizado.</li>
						  <li>Electrocardiograma</li>
						  <li>Suturas, curaciones, colocaci&oacute;n de sondas urinarias.</li>
						  <li>Monitoreo fetal, nebulizaciones e inyectables, entre otras.</li>
						</ul>
						<p><strong>Nuestros equipos de Urgencias son:</strong></p>
						<ul class="text-justify">
						  <li>Nebulizadores, monitores cardiacos m&aacute;s desfibrilador y desfibrilador autom&aacute;tico port&aacute;til.</li>
						  <li>Monitor fetal</li>
						  <li>Ultrasonido port&aacute;til </li>
						  <li>Bombas de infusi&oacute;n</li>
						  <li>Succi&oacute;n</li>
						  <li>Gluc&oacute;metro</li>
						  <li>Ox&iacute;metro port&aacute;til</li>
						  <li>Monitor de signos vitales</li>
						  <li>Electrocardiograma</li>
						</ul>					
						<strong>Nuestros M&eacute;dicos del Cuarto de Urgencias:</strong>
						Medicina General<br /><br />
						<ul class="list-unstyled text-justify">
						  <li>Dra. Maricela Sitton- Coordinadora del Cuarto de Urgencias</li>
						  <li>Dr. Gabriel Rodr&iacute;guez</li>
						  <li>Dr. Jorge Valdez</li>
						  <li>Dra. Tania Uribe</li>
						  <li>Dra. Yaksary Mart&iacute;neza</li>
						  <li>Dra. Celeste Canto</li>
						  <li>Dr. Nyder Moreno</li>
						  <li>Dr. Manuel Garc&iacute;a</li>
						  <li>Dr. Dionisio Mart&iacute;nez</li>
						  <li>Dr. Edgar Samudio</li>
						  <li>Dr. Luis De Gracia</li>
						  <li>Dr. Manuel Gonz&aacute;lez</li>						
						</ul>
					</p>
				</div>
				<div class="col-md-6" align="center"><img src="img/urgencias.jpg" width="90%" class="img-rounded"></div>
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('hospitalizacion')}}"  class="list-group-item"> Habitaciones</a>
                    <a href="{{URL::to('admision')}}"  class="list-group-item"> Admisi&oacute;n</a>
                    <a href="{{URL::to('seguros')}}"  class="list-group-item"> Seguros Nacionales e Internacionales</a>
                    <a href="{{URL::to('registrobb')}}"  class="list-group-item"> Registro de Nacimiento</a>
                    <li class="dropdown-header">Servicios Hospitalarios</li>
                    <a href="{{URL::to('hemodialisis')}}"  class="list-group-item"> Hemodi&aacute;lisis</a> 
                    <a href="{{URL::to('cuidados')}}"  class="list-group-item"> Cuidados Intensivos</a> 
                    <a href="{{URL::to('quirofano')}}"  class="list-group-item"> Quir&oacute;fano</a>
                    <a href="{{URL::to('laboratorio')}}"  class="list-group-item"> Laboratorio </a>
                    <a href="{{URL::to('rayosx')}}"  class="list-group-item"> Radiolog&iacute;a</a> 
                    <a href="{{URL::to('urgencias')}}"  class="list-group-item active"> Urgencias</a>
                    <a href="{{URL::to('capilla')}}"  class="list-group-item"> Capilla</a>
                    <a href="{{URL::to('farmacia')}}"  class="list-group-item"> Farmacia</a>
                </ul>
            </div>
		</div>
	</div>
@stop