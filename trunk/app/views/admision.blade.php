@extends ('layout')

@section('title')
	Hospital Chiriquí - Admisi&oacute;n
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
				<h2 class="subtitulo">Admisi&oacute;n</h2>
				<p class="text-justify">El departamento de Admisi&oacute;n del Hospital Chiriqu&iacute; proporciona a los pacientes un trato confortable y confidencial para una estad&iacute;a segura.
				  Contamos con diversos paquetes ambulatorios en el sal&oacute;n de operaciones, para cirug&iacute;as generales, parto y hospitalizaci&oacute;n con tarifas accesibles.
				  Los pasos requeridos al momento que realice la admisi&oacute;n en el hospital son:
				<ul>
				  <li>Presentar su c&eacute;dula o pasaporte (extranjeros).</li>
				  <li>Solicitar a su m&eacute;dico la orden de hospitalizaci&oacute;n.</li>
				  <li>Llenar la ficha de hospitalizaci&oacute;n junto con el oficial de admisi&oacute;n y los documentos de responsabilidad en su cuenta de gastos hospitalarios y otros formularios de admisi&oacute;n.</li>
				  <li>Realizar el dep&oacute;sito de ingresos dependiendo del tipo de admisi&oacute;n.</li>
				</ul>
				<p> Para cualquier informaci&oacute;n puede contactarse a: <a href="mailto:admision@hospitalchiriqui.com">admisi&oacute;n@hospitalchiriqui.com</a> o a la oficina: 777-8047</p>
				
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/admision.jpg" width="90%" class="img-rounded">
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('hospitalizacion')}}"  class="list-group-item"> Habitaciones</a>
                    <a href="{{URL::to('admision')}}"  class="list-group-item active"> Admisi&oacute;n</a>
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