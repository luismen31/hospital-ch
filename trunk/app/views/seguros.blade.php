@extends ('layout')

@section('title')
	Hospital Chiriquí - Seguros
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
				<h2 class="subtitulo">Seguros Nacionales</h2>
				<p class="text-justify">
					<ul type="disc">
						<li>Las compa&ntilde;&iacute;as nacionales con las cuales trabaja el Hospital Chiriqu&iacute; son las siguientes:
							<ul>
							  <li>PALIG</li>
							  <li>BLUE CROSS AND BLUE SHIELD</li>
							  <li>ASSA</li>
							  <li>WORLDWIDE MEDICAL</li>
							  <li>ANCON</li>
							  <li>GENERALI</li>
							  <li>MAPFRE</li>
							  <li>OPTIMA</li>
							  <li>SEGUROS CENTRALIZADOS</li>
							  <li>SEGUROS FEDPA</li>
							  <li>HSBC</li>
							  <li>SURAMERICANA DE SEGUROS</li>
							  <li>COMPA&Ntilde;&Iacute;A ISTME&Ntilde;A</li>
							  <li>SAGICOR</li>
							  <li>AXA ASSISTANCE</li>
							  <li>SEGUROS VIVIR</li>
							</ul>
						</li>
					</ul>
				</p>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/generalli.jpg" class="img-rounded" width="90%">
			</div>
			<hr>
			<div class="row">
				<div class="col-md-7 col-md-push-5">
					<h2  class="subtitulo">Seguros Internacionales</h2>
					<p class="text-justify">
						<ul>
						  <li>Las compa&ntilde;&iacute;as internacionales con las cuales trabaja el Hospital Chiriqu&iacute; son las siguientes:
							<ul>
							  <li>BLUE CROSS AND BLUE SHIELD.</li>
							  <li>FOREIGN MEDICAL PROGRAM(VA).</li>
							  <li>REDBRIDGE.</li>
							  <li>AXA ASSISTANCE PANAMA</li>
							</ul>
						  </li>
						</ul>
					</p>
				</div>
				<div class="col-md-5 col-md-pull-7 mg-img-top" align="center">
					<img src="img/bluecross.jpg" width="90%" class="img-rounded">
				</div>
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('hospitalizacion')}}"  class="list-group-item"> Habitaciones</a>
                    <a href="{{URL::to('admision')}}"  class="list-group-item"> Admisi&oacute;n</a>
                    <a href="{{URL::to('seguros')}}"  class="list-group-item active"> Seguros Nacionales e Internacionales</a>
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