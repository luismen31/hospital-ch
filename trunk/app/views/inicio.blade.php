@extends ('layout')

@section('title')
	Hospital Chiriquí
@stop

@section('css')
  {{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}
  
@stop

@section ('content')
	@include('slider')
	
  <div class="title-cont titulo">
    <div class="fondo-title"></div>
    <h2 class="text-left">Novedades</h2>
  </div>
  
    <div class="content owl-carousel" id="owl-carousel">   
      <!-- slide 1 -->       
      <div class="thumbnail">
        <div class="img-height">
          <img class="lazyOwl" data-src="{{ URL::to('img/relevo-small.jpg') }}">
        </div>
        <div class="caption" >
            <h4>Hospital Chiriquí participa en Relevo por la Vida</h4>
            <p>El Hospital Chiriquí participó en Relevo por la Vida 2014, de la Fundación de los Niños con
              Leucemia y Cáncer, el cual se celebró el 25 de octubre en el Mall Chiriquí.</p>
            <p><a class="btn btn-primary btn-sm" href="{{URL::to('relevo')}}">Ver Detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
        </div>
      </div>
      <!-- slide 2 -->    
      <div class="thumbnail">
      	<div class="img-height">
        	<img class="lazyOwl" data-src="{{ URL::to('img/medalla-small.jpg') }}">
      	</div>
        <div class="caption">
            <h4>Entrega de Medallas de Reconocimiento al Benemérito Cuerpo de Bomberos de Chiriquí</h4>
            <p style="font-size:13px;">Director Ejecutivo hizo entrega de las Medallas de Reconocimiento otorga el Hospital Chiriquí al Benemérito Cuerpo de Bomberos de Panamá</p>
            <p><a href="{{URL::to('entrega_medalla')}}" class="btn btn-primary btn-sm" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
        </div>
      </div>
      <!-- slide 3 -->    
      <div class="thumbnail">
      	<div class="img-height">
        	<img class="lazyOwl" data-src="{{ URL::to('img/congreso2014/congreso3.jpg') }}">
        </div>
        <div class="caption">
            <h4>XXVI Congreso Médico - Hospital Chiriquí</h4>
            <p>Avances en Medicina Integral, 10,11 y 12 de Julio</p>
            <p><a href="{{URL::to('congreso')}}" class="btn btn-primary btn-sm" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
        </div>
      </div>
      <!-- slide 4 -->    
      <div class="thumbnail">
      	<div class="img-height">
        	<img class="lazyOwl" data-src="{{ URL::to('img/signosvitales.jpg') }}">
        </div>
        <div class="caption">
            <h4>Signos Vitales</h4>
            <p>Revista del Hospital Chiriqu&iacute;.</p>
            <p><a href="{{URL::to('#')}}" class="btn btn-primary btn-sm" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
        </div>
      </div>
      <!-- slide 5 -->  
      <div class="thumbnail">
        <div class="img-height">
        	<img class="lazyOwl" data-src="{{URL::to('img/cintarosadaazulsmall.png')}}">
        </div>
        <div class="caption" >
  	        <h4>Cinta Rosada y Azul</h4>
            <p>Conscientes de la necesidad de apoyar  la detecci&oacute;n temprana del C&aacute;ncer de mama y de pr&oacute;stata, Hospital  Chiriqu&iacute;  se une  a la Campa&ntilde;a de la Cinta Rosada.</p>
            <p><a class="btn btn-primary btn-sm" href="{{URL::to('cintarosada')}}">Ver Detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
        </div>
      </div>
      
    </div><!-- End row -->

	<div class="row" style="margin-top:20px;">
		<div class="col-sm-6 col-md-6 col-lg-6 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
			<h2 class="subtitulo">Festividades Patrias</h2>
      
			<p class="text-justify">
        Hospital Chiriqu&iacute;, se siente orgulloso de conmemorar el mes de noviembre, realizando un rincon t&iacute;pico en homenaje a nuestro Pa&iacute;s.
         <a href="{{URL::to('fiestas_patrias')}}" class="btn btn-primary btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
      </p>
     
		</div>
		<div class="col-sm-4 col-md-4 col-lg-4" align="center">
      <br>
      <a href="{{URL::to('img/rincon_tipico/foto 6.jpg')}}"  title="Fiestas Patrias" class="fancybox" rel="ligthbox">
        <div class="zoom">
          <div class="image-height">
              <img src="{{ URL::to('img/rincon_tipico/foto 6.jpg') }}" class="img-rounded" width="80%">
          </div>
          <div class="zoom-caption">                  
                <i class="fa fa-search-plus fa-4x"></i>            
          </div>
        </div>
      </a>
    </div>
	</div>
	<hr>
	<div class="row">
		<div class="col-sm-6 col-md-6 col-lg-6 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 col-sm-push-4">
			<h2 class="subtitulo">Visita de Operaci&oacute;n Sonrisa</h2>
			<p class="text-justify">Con el compromiso de fortalecer los lazos con las causas sociales, Hospital Chiriqu&iacute; recibi&oacute; la visita de los representantes de la Fundaci&oacute;n Operaci&oacute;n Sonrisa, con quienes se realiz&oacute; un recorrido por las instalaciones para conocer los m&aacute;s novedosos equipos m&eacute;dicos que ofrece este complejo hospitalario a la comunidad paname&ntilde;a, su recurso humano e intercambiarse mutuamente conocimientos en materia hospitalaria, servicios de atenci&oacute;n primaria de salud, laboratorio, rayos x, ultrasonidos, farmacia y servicios de ambulancia las 24 horas del d&iacute;a.</p>
		</div>
		<div class="col-sm-4 col-md-4 col-lg-4 col-sm-pull-6" align="center">      
      <a href="{{URL::to('img/operacionsonrisa.jpg')}}"  title="Visita de Operación Sonrisa" class="fancybox" rel="ligthbox">  
        <div class="zoom">
          <div class="image-height">              
              <img src="{{URL::to('img/operacionsonrisa.jpg')}}" width="80%" class="img-rounded">
          </div>
          <div class="zoom-caption">                  
                <i class="fa fa-search-plus fa-4x"></i>            
          </div>
        </div>
      </a>
    </div>
	</div>
	<hr>
	<div class="row">
		<div class="col-sm-6 col-md-6 col-lg-6 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
			<h2 class="subtitulo">Capacitaci&oacute;n de Enfermer&iacute;a</h2>
			<p class="text-justify">Hospital Chiriqu&iacute; ha llevado desarrollando contantemente docencias superiores a su equipo m&eacute;dico con el objetivo de mantenernos a la vanguardia en materia hospitalaria. Y gracias a esa iniciativa contamos con la experiencia y calidad en atenci&oacute;n hospitalaria.
				Recientemente, el equipo de enfermer&iacute;a realiz&oacute; el programa de capacitaci&oacute;n con el tema: Tolerancia Digestiva en los Beb&eacute;s. Durante el desarrollo de la docencia, las enfermeras pudieron conocer sobre las causas de los trastornos digestivos en los beb&eacute;s, sus s&iacute;ntomas y sus medidas preventivas.</p>
		</div>
		<div class="col-sm-4 col-md-4 col-lg-4" align="center">
      <a href="{{URL::to('img/capacitacionenfermera.jpg')}}"  title="Capacitaci&oacute;n de Enfermer&iacute;a" class="fancybox" rel="ligthbox">  
        <div class="zoom">
          <div class="image-height">
              <img src="{{URL::to('img/capacitacionenfermera.jpg')}}" width="80%" class="img-rounded">      
          </div>
          <div class="zoom-caption">                  
                <i class="fa fa-search-plus fa-4x"></i>            
          </div>
        </div>
      </a> 
    </div>
	</div>
@stop