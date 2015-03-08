@extends ('layout')

@section('title')
	Hospital Chiriquí - Hospitalizaci&oacute;n
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
				<h2 class="subtitulo">Habitaciones</h2>
				<p class="text-justify">
					El paciente al ingresar al Hospital Chiriqu&iacute;, adem&aacute;s de recibir una atenci&oacute;n esmerada, puede hacer uso de nuestras modernas habitaciones entre las cuales tenemos:
				</p>
				<ul>
					<li>Suites</li>
					<li>Jr. Suites</li>
					<li>Habitaciones Privadas</li>
					<li>Habitaciones Semi-Privadas</li>
					<li>Habitaciones de cuatro camas</li>
				</ul>
				<p class="text-justify">Todas estas habitaciones cuentan con las siguientes comodidades:</p>
				<ul>
					<li>Tel&eacute;fono</li>
					<li>Camas El&eacute;ctricas</li>
					<li>Aire Acondicionado</li>
					<li>Mesa para su alimentaci&oacute;n</li>
					<li>Televisi&oacute;n con cable TV</li>
					<li>Servicio de Llamada de Enfermeras</li>
				</ul>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/habita1.jpg" width="90%" class="img-rounded">
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('hospitalizacion')}}"  class="list-group-item active"> Habitaciones</a>
                    <a href="{{URL::to('admision')}}"  class="list-group-item"> Admisi&oacute;n</a>
                    <a href="{{URL::to('seguros')}}"  class="list-group-item"> Seguros Nacionales e Internacionales</a>
                    <a href="{{URL::to('registrobb')}}"  class="list-group-item"> Registro de Nacimiento</a>
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