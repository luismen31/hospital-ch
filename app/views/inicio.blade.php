@extends ('layout')

@section('title')
	Hospital Chiriquí
@stop
@section ('content')
	@include('slider')
	<h2 class="featurette-heading text-left" style="padding-bottom:7px"><strong>Novedades</strong></h2>
	<div class="row content">        
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
          	<div class="img-height">
            	<img src="img/Charla01.jpg">
          	</div>
            <div class="caption">
                <h4>Primeros Pasos Como Mam&aacute;</h4>
                <p>Creciendo Juntos y Hospital Chiriqu&iacute;</p>
                <p><a href="/hospital-ch/public/charlaembarazada" class="btn btn-primary" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
          	<div class="img-height">
            	<img src="img/congreso2014/congreso3small.jpg">
            </div>
            <div class="caption">
                <h4>XXVI Congreso Médico - Hospital Chiriquí</h4>
                <p>Avances en Medicina Integral, 10,11 y 12 de Julio</p>
                <p><a href="/hospital-ch/public/congreso" class="btn btn-primary" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
          	<div class="img-height">
            	<img src="img/signosvitales.jpg">
            </div>
            <div class="caption">
                <h4>Signos Vitales</h4>
                <p>Revista del Hospital Chiriqu&iacute;.</p>
                <p><a href="/hospital-ch/public/#" class="btn btn-primary" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <div class="img-height">
            	<img src="img/cintarosadaazulsmall.png">
            </div>
            <div class="caption" >
				<h4>Cinta Rosada y Azul</h4>
                <p>Conscientes de la necesidad de apoyar  la detecci&oacute;n temprana del C&aacute;ncer de mama y de pr&oacute;stata, Hospital  Chiriqu&iacute;  se une  a la Campa&ntilde;a de la Cinta Rosada.</p>
                <p><a class="btn btn-primary" href="/hospital-ch/public/cintarosada">Ver Detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>
        
      </div><!-- End row -->



	<hr>
	<div class="row">
		<div class="col-md-7">
			<h2>Entrega de Becas Escolares 2013</h2>
			<p class="text-justify">Reafirmando el compromiso solidario con la educaci&oacute;n paname&ntilde;a, Hospital Chiriqu&iacute; realiz&oacute; por tercer a&ntilde;o consecutivo la entrega de becas escolares 2013, la cual beneficio a los hijos de los colaboradores que cuentan con excelente promedio acad&eacute;mico.</p>
		</div>
		<div class="col-md-5" align="center"><img src="img/becas.jpg" class="img-rounded" width="80%"></div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-7 col-md-push-5">
			<h2>Visita de Operaci&oacute;n Sonrisa</h2>
			<p class="text-justify">Con el compromiso de fortalecer los lazos con las causas sociales, Hospital Chiriqu&iacute; recibi&oacute; la visita de los representantes de la Fundaci&oacute;n Operaci&oacute;n Sonrisa, con quienes se realiz&oacute; un recorrido por las instalaciones para conocer los m&aacute;s novedosos equipos m&eacute;dicos que ofrece este complejo hospitalario a la comunidad paname&ntilde;a, su recurso humano e intercambiarse mutuamente conocimientos en materia hospitalaria, servicios de atenci&oacute;n primaria de salud, laboratorio, rayos x, ultrasonidos, farmacia y servicios de ambulancia las 24 horas del d&iacute;a.</p>
		</div>
		<div class="col-md-5 col-md-pull-7" align="center"><img src="img/operacionsonrisa.jpg" width="80%" class="img-rounded"></div>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-7">
			<h2>Capacitaci&oacute;n de Enfermer&iacute;a</h2>
			<p class="text-justify">Hospital Chiriqu&iacute; ha llevado desarrollando contantemente docencias superiores a su equipo m&eacute;dico con el objetivo de mantenernos a la vanguardia en materia hospitalaria. Y gracias a esa iniciativa contamos con la experiencia y calidad en atenci&oacute;n hospitalaria.
				Recientemente, el equipo de enfermer&iacute;a realiz&oacute; el programa de capacitaci&oacute;n con el tema: Tolerancia Digestiva en los Beb&eacute;s. Durante el desarrollo de la docencia, las enfermeras pudieron conocer sobre las causas de los trastornos digestivos en los beb&eacute;s, sus s&iacute;ntomas y sus medidas preventivas.</p>
		</div>
		<div class="col-md-5" align="center"> <img src="img/capacitacionenfermera.jpg" width="80%" class="img-rounded"></div>
	</div>

@stop
