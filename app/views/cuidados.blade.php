@extends ('layout')

@section('title')
	Hospital Chiriquí - Cuidados
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
				<h2 class="subtitulo">Cuidados Intensivos</h2>
				<p class="text-justify">
					<strong>Hospital Chiriqu&iacute;</strong>, cuenta en su unidad de cuidados intensivos con el mejor equipo humano y tecnol&oacute;gico del &aacute;rea, ofreciendole a sus pacientes una eficaz atenci&oacute;n.
				</p>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/cuidadosintensivos.jpg" width="90%" class="img-rounded">
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
                    <a href="{{URL::to('cuidados')}}"  class="list-group-item active"> Cuidados Intensivos</a> 
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