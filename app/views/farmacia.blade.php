@extends ('layout')

@section('title')
	Hospital Chiriquí - Farmacia
@stop

@section ('content')
	@include('slider')
	
	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Hospitalizaci&oacute;n</h2>
    </div>

	<div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 line-left">			
			<h2 class="subtitulo">Farmacia</h2>
			<p class="text-justify">
				Establecimiento dedicado a la venta al por menor de <strong>productos farmac&eacute;uticos</strong> y al despacho de las recetas las 24 horas del d&iacute;a. La farmacia del <em>Hospital Chiriqu&iacute;</em> adem&aacute;s de brindar el servicio dentro de la instituci&oacute;n a los pacientes hospitalizados, ofrece sus productos a los pacientes de consulta externa y unidad de urgencias, trabajando tambi&eacute;n para la comunidad al ofrecerle medicamentos a precios   accesibles y con descuentos a las personas de tercera edad.
			</p>
			<div class="row">
				<div class="col-md-6">
					<p class="text-justify">
						La <u>farmacia del Hospital Chiriqu&iacute;</u> llena la expectativa del m&eacute;dico, paciente-cliente en cuanto a medicamento se refiere ya que el personal de farmacia hace un seguimiento constante sobre los medicamentos administrados diariamente dentro del Hospital al igual que los de salida de la consulta externa en las diferentes especialidades m&eacute;dicas. Para este fin se trabaja en forma coordinada con el personal m&eacute;dico en sus necesidades sobre medicamentos, con el personal administrativo y tambi&eacute;n con la diferentes casas comerciales, laboratorios, distribuidoras, visitadores m&eacute;dicos y vendedores; los cuales hacen posible la marcha activa de esta farmacia.<br><br>
						Consciente de la realidad que representa esta farmacia en el servicio que brinda a la comunidad, el personal que labora en la farmacia del Hospital Chiriqu&iacute; se prepara d&iacute;a a d&iacute;a y adquiere una mayor destreza y nuevos conocimientos sobre todos los medicamentos que est&aacute;n al alcance de pacientes - clientes para poder brindarle la seguridad que se necesita en la interpretaci&oacute;n y despacho de la receta.<br><br>
						El personal de farmacia agradece a Dios, al personal m&eacute;dico, administrativo, colaboradores y especialmente al paciente - cliente que ponen su confianza en la farmacia del Hospital Chiriqu&iacute; y hace de esta empresa algo suyo.
					</p>
				</div>
				<div class="col-md-6" align="center">
					<img src="img/farmacia.jpg" width="90%" class="img-rounded">
				</div>
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
                    <a href="{{URL::to('urgencias')}}"  class="list-group-item"> Urgencias</a>
                    <a href="{{URL::to('capilla')}}"  class="list-group-item"> Capilla</a>
                    <a href="{{URL::to('farmacia')}}"  class="list-group-item active"> Farmacia</a>
                </ul>
            </div>
		</div>
	</div>
@stop