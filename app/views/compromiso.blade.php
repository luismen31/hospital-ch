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
			    <div class="col-sm-6 col-md-6 col-lg-6 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
			      <h2 class="subtitulo">Congreso Médico 2015</h2>
			      <p class="text-justify">Agradece el apoyo recibido  de los profesionales de la medicina, laboratorios, Empresas y proveedores para la realización del XXVII Congreso Médico <strong>“Actualizacion en Avances de la Ciencia Médica”</strong>;  donde se discutieron tópicos selectos en Hemato Oncología, Cirugía Pediatría, Ginecología-Obstetricia, Endocrinología, Economía de la Salud, Ortopedia;  el cual fue un factor determinante para el éxito  del mismo y de impacto en los programas de actualización y educación médica continua.
			        <a href="{{URL::to('congreso2015')}}" class="btn btn-link btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
			      </p>
			    </div>
			    <div class="col-sm-4 col-md-4 col-lg-4" align="center">
			      <a href="{{URL::to('img/congreso_medico/7.jpg')}}"  title="Congreso Médico 2015" class="fancybox" rel="ligthbox">  
			        <div class="zoom">
			          <div class="image-height">
			              <img src="{{URL::to('img/congreso_medico/7.jpg')}}" width="80%" class="img-rounded">      
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
			      <h2 class="subtitulo">Canastilla</h2>
			      <p class="text-justify">En el marco de la celebración de su XXVII Aniversario de Fundación el Hospital Chiriquí obsequió una Canastilla a  la sra. Clementina Mitré,  residente en la comunidad de  Soloy quien dio a luz a una niña el 02 de julio.  Hizo entrega de la misma los Dres. Rubis Pérez y Daniel Kam acompañados de la Lic. Maribel Maldonado, directora Administrativa.
			        <a href="{{URL::to('canastilla')}}" class="btn btn-link btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
			      </p>
			    </div>
			    <div class="col-sm-4 col-md-4 col-lg-4 col-sm-pull-6" align="center">      
			      <a href="{{URL::to('img/canastilla/canastilla_2.jpg')}}"  title="Canastilla" class="fancybox" rel="ligthbox">  
			        <div class="zoom">
			          <div class="image-height">              
			              <img src="{{URL::to('img/canastilla/canastilla_2.jpg')}}" width="80%" class="img-rounded">
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
			      <h2 class="subtitulo">Contrato de Energía Solar</h2>
			      
			      <p class="text-justify">
			        Hospital Chiriquí y la empresa Greenwood Energy anunciaron hoy que desarrollarán y operarán de forma conjunta una planta solar fotovoltaica de 1 MW, en dos fases de 500 KWn, cada una. La primera fase de 500 KW se desarrollará sobre los techos del Hospital, incluyendo un parking fotovoltaico de unos 40 KW, que estará ubicado en el aparcamiento destinado para los vehículos. La segunda fase de 500Kw, será desarrollada sobre la superficie y techos del propio Hospital.
			        <a href="{{URL::to('contrato_energia_solar')}}" class="btn btn-link btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
			      </p>
			     
			    </div>
			    <div class="col-sm-4 col-md-4 col-lg-4" align="center">
			      <br>
			      <a href="{{URL::to('img/contrato_energia_solar/6.jpg')}}"  title="Contrato de Energía Solar" class="fancybox" rel="ligthbox">
			        <div class="zoom">
			          <div class="image-height">
			              <img src="{{ URL::to('img/contrato_energia_solar/6.jpg') }}" class="img-rounded" width="80%">
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
			      <h2 class="subtitulo">Festividades Patrias</h2>
			      
			      <p class="text-justify">
			        Hospital Chiriqu&iacute;, se siente orgulloso de conmemorar el mes de noviembre, realizando un rincon t&iacute;pico en homenaje a nuestro Pa&iacute;s.
			         <a href="{{URL::to('fiestas_patrias')}}" class="btn btn-link btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
			      </p>
			     
			    </div>
			    <div class="col-sm-4 col-md-4 col-lg-4 col-sm-pull-6" align="center">
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