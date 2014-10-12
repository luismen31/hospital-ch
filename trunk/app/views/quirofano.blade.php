@extends ('layout')

@section('title')
	Hospital Chiriquí - Quir&oacute;fano
@stop

@section ('content')
	@include('slider')
	<div class="row">
		<hr>
		<div class="col-md-6">
			<h2>Quir&oacute;fano</h2>
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
		<div class="col-md-6" align="center"><img src="img/personal_quirofano.jpg" width="90%" class="img-rounded"></div>
	</div>
@stop