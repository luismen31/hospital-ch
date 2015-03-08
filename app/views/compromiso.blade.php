@extends ('layout')

@section('title')
	Hospital Chiriquí - Compromiso
@stop
@section('css')
  {{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}
  
@stop
@section ('content')
	@include('slider')

	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Media Press</h2>
    </div>

    <div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 line-left">
			<div class="row" style="margin-top:20px;">
				<div class="col-md-6">
					<h2 class="subtitulo">Festividades Patrias</h2>
		      
					<p class="text-justify">
			        Hospital Chiriqu&iacute;, se siente orgulloso de conmemorar el mes de noviembre, realizando un rincon t&iacute;pico en homenaje a nuestro Pa&iacute;s.
			         <a href="{{URL::to('fiestas_patrias')}}" class="btn btn-primary btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
			      </p>
		     
				</div>
				<div class="col-md-6" align="center">
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
				<div class="col-md-6 col-sm-push-6">
					<h2 class="subtitulo">Visita de Operaci&oacute;n Sonrisa</h2>
					<p class="text-justify">Con el compromiso de fortalecer los lazos con las causas sociales, Hospital Chiriqu&iacute; recibi&oacute; la visita de los representantes de la Fundaci&oacute;n Operaci&oacute;n Sonrisa, con quienes se realiz&oacute; un recorrido por las instalaciones para conocer los m&aacute;s novedosos equipos m&eacute;dicos que ofrece este complejo hospitalario a la comunidad paname&ntilde;a, su recurso humano e intercambiarse mutuamente conocimientos en materia hospitalaria, servicios de atenci&oacute;n primaria de salud, laboratorio, rayos x, ultrasonidos, farmacia y servicios de ambulancia las 24 horas del d&iacute;a.</p>
				</div>
				<div class="col-md-6 col-sm-pull-6" align="center">      
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
				<div class="col-md-6">
					<h2 class="subtitulo">Capacitaci&oacute;n de Enfermer&iacute;a</h2>
					<p class="text-justify">Hospital Chiriqu&iacute; ha llevado desarrollando contantemente docencias superiores a su equipo m&eacute;dico con el objetivo de mantenernos a la vanguardia en materia hospitalaria. Y gracias a esa iniciativa contamos con la experiencia y calidad en atenci&oacute;n hospitalaria.
						Recientemente, el equipo de enfermer&iacute;a realiz&oacute; el programa de capacitaci&oacute;n con el tema: Tolerancia Digestiva en los Beb&eacute;s. Durante el desarrollo de la docencia, las enfermeras pudieron conocer sobre las causas de los trastornos digestivos en los beb&eacute;s, sus s&iacute;ntomas y sus medidas preventivas.</p>
				</div>
				<div class="col-md-6" align="center">
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
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('compromiso')}}" class="list-group-item active">Eventos</a>
                    <a href="{{URL::to('cintarosada')}}" class="list-group-item">Campa&ntilde;as de Salud</a>
                </ul>
            </div>
		</div>
	</div>
@stop