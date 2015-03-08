@extends ('layout')

@section('title')
	Hospital Chiriquí - Quir&oacute;fano
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
				<h2 class="subtitulo">Quir&oacute;fano</h2>
				<p class="text-justify">
					El Hospital Chiriqu&iacute; ofrece 5 quir&oacute;fanos completamente equipados para brindar un &oacute;ptimo servicios hospitalario en cirug&iacute;as de alta especialidad y equipados con la tecnolog&iacute;a avanzada.<br/>
					Nuestro personal m&eacute;dico cuenta con una vasta experiencia en los diferentes marcos de la cirug&iacute;a asertiva y actualizada en:
					Gastrectom&iacute;a, Mastectom&iacute;a radical, Prostatectom&iacute;a, Oftalmolog&iacute;a, Ortopedia y las &uacute;ltimas t&eacute;cnicas quir&uacute;rgicas.</p>
					<p>Las instalaciones cuentan con una Unidad de Reanimaci&oacute;n con:</p>
					<ul>
					  <li>4 camas</li>
					  <li>Monitor para el paciente post-anestesia</li>
					  <li>Servicios complementarios</li>
					  <li>Personal m&eacute;dico calificado</li>
					</ul>
				</p>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/personal_quirofano.jpg" width="90%" class="img-rounded">
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
                    <a href="{{URL::to('quirofano')}}"  class="list-group-item active"> Quir&oacute;fano</a>
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