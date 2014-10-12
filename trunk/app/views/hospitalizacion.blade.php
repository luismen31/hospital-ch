@extends ('layout')

@section('title')
	Hospital Chiriquí - Hospitalizaci&oacute;n
@stop

@section ('content')
	@include('slider')
	<div class="row">
		<hr>
		<div class="col-md-6">
			<h2>Hospitalizaci&oacute;n</h2>
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
		<div class="col-md-6" align="center" style="padding-top:15px;"><img src="img/habita1.jpg" width="90%" class="img-rounded"></div>
	</div>
@stop