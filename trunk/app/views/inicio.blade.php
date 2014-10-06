@extends ('layout')

@section('title')
	Hospital Chiriquí
@stop
@section ('content')
	<!-- Slider -->
	<div class="carousel slide" id="carousel" data-ride="carousel">				
		<div class="carousel-inner" style="max-height:440px">
			<div class="item active">
				<img alt="" src="img/logobanner.jpg" />
				<div class="carousel-caption">
					<h2 class="txt-black"><strong>Experiencia</strong></h2>
					<p class="txt-black"><strong>25 Años Contigo</strong></p>
					<a class="btn btn-primary" href="/hospital/public/historia">Conozca M&aacute;s</a>
				</div>
			</div>
			<div class="item">
				<img alt="" src="img/enfermeria_portada.jpg" />
				<div class="carousel-caption">
					<h2 class="txt-white"><strong>Enfermeras</strong></h2>
					<p class="txt-white"><strong>Siempre pensando en tu bienestar</strong></p>
					<a class="btn btn-primary" href="/hospital/public/enfermeria">Conozca M&aacute;s</a>
				</div>
			</div>
			<div class="item">
				<img alt="" src="img/quirofanobanner.jpg" />
				<div class="carousel-caption">
					<h2 class="txt-white"><strong>Quir&oacute;fano</strong></h2>
					<p class="txt-white"><strong>Su salud est&aacute; en nuestras manos</strong></p>
					<a class="btn btn-primary" href="/hospital/public/quirofano">Conozca M&aacute;s</a>
				</div>
			</div>
			<div class="item">
				<img alt="" src="img/UCI.jpg" />
				<div class="carousel-caption">
					<h2 class="txt-white"><strong>Sala de recuperación</strong></h2>
					<p class="txt-white"><strong>Modernas Instalaciones</strong></p>
					<a class="btn btn-primary" href="/hospital/public/hospitalizacion">Conozca M&aacute;s</a>
				</div>
			</div>
		</div> 
		<a class="left carousel-control" href="#carousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a> 
		<a class="right carousel-control" href="#carousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>

	<div class="row destacados">		
		<div class="container">
			<h2 class="featurette-heading text-left" style="padding-bottom:7px"><strong>Novedades</strong></h2>
		</div>
		<div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
			<img src="img/Charla01.jpg" class="img-rounded img-thumbnail" style="height:290px">
              <div class="caption">
                <h4>Primeros Pasos Como Mam&aacute;</h4>
                <p>Creciendo Juntos y Hospital Chiriqu&iacute;</p>
                <p><a href="charlaembarazada.php" class="btn btn-primary btn-sm" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
			<img src="img/congreso2014/congreso3small.jpg" class="img-rounded img-thumbnail">
              <div class="caption">
                <h4>XXVI Congreso Médico - Hospital Chiriquí</h4>
                <p>Avances en Medicina Integral, 10,11 y 12 de Julio</p>
                <p><a href="congreso.php" class="btn btn-primary" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>


		<div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
			<img src="img/signosvitales.jpg" class="img-rounded img-thumbnail">
              <div class="caption">
                <h4>Signos Vitales</h4>
                <p>Revista del Hospital Chiriqu&iacute;.</p>
                <p><a href="#" class="btn btn-primary" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
			<img src="img/cintarosadaazulsmall.png" class="img-rounded img-thumbnail">
              <div class="caption">
                <h4>Cinta Rosada y Azul</h4>
                <p>Conscientes de la necesidad de apoyar  la detecci&oacute;n temprana del C&aacute;ncer de mama y de pr&oacute;stata, Hospital  Chiriqu&iacute;  se une  a la Campa&ntilde;a de la Cinta Rosada.</p>
                <p><a class="btn btn-primary" href="cintarosada.php">Ver Detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
            </div>
          </div>
        </div>
	</div>

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
