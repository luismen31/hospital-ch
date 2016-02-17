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
          <p style="font-size:13px;">Director Ejecutivo hizo entrega de las Medallas de Reconocimiento al Benemérito Cuerpo de Bomberos de Panamá</p>
          <p><a href="{{URL::to('entrega_medalla')}}" class="btn btn-primary btn-sm" title="Ver detalles">Ver detalles <span class="glyphicon glyphicon-chevron-right"></span></a></p>
      </div>
    </div>
    <!-- slide 3 -->    
    <div class="thumbnail">
      <div class="img-height">
        <img class="lazyOwl" data-src="{{ URL::to('img/afiche_congreso.jpeg') }}">
      </div>
      <div class="caption">
          <h4>XXVIII Congreso Médico - Hospital Chiriquí, S.A.</h4>
          <p>"Defrente a los Nuevos Retos del Futuro", 30 de junio - 2 de julio</p>
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
      <h2 class="subtitulo">XXVIII Congreso Médico Hospital Chiriquí</h2>
      <p class="text-justify">El Hospital Chiriquí les invita cordialmente al Congreso Médico en su versión XXVIII, "Defrente a los Nuevos Retos del Futuro", realizado desde el 30 de junio al 2 de julio de 2016.
        <a href="{{URL::to('congreso')}}" class="btn btn-link btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
        <div class="alert alert-info">          
            <h5><strong>Las inscripciones serán a partir del 15 de febrero.</strong></h5>
            <h4>
              <a href="{{ route('inscripcion.create') }}" class="alert-link"><i class="fa fa-arrow-right"></i> INSCRÍBETE AQUÍ</a>
            </h4>        
        </div>
      </p>
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4" align="center">
      <a href="{{URL::to('img/afiche_congreso.jpeg')}}"  title="XXVIII Congreso Médico Hospital Chiriquí" class="fancybox" rel="ligthbox">  
        <div class="zoom">
          <div class="image-height">
              <img src="{{URL::to('img/afiche_congreso.jpeg')}}" w idth="80%" class="img-rounded" style="width:60%;">      
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
         El Hospital Chiriquí, se siente orgulloso de conmemorar el mes de la Patria.
         <a href="{{URL::to('fiestas_patrias')}}" class="btn btn-link btn-sm">Ver M&aacute;s <span class="glyphicon glyphicon-chevron-right"></span></a> 
      </p>
     
    </div>
    <div class="col-sm-4 col-md-4 col-lg-4 col-sm-pull-6" align="center">
      <br>
      <a href="{{URL::to('img/noviembre2015/noviembre-2.jpg')}}"  title="Fiestas Patrias" class="fancybox" rel="ligthbox">
        <div class="zoom">
          <div class="image-height">
              <img src="{{ URL::to('img/noviembre2015/noviembre-2.jpg') }}" class="img-rounded" width="80%">
          </div>
          <div class="zoom-caption">                  
                <i class="fa fa-search-plus fa-4x"></i>            
          </div>
        </div>
      </a>
    </div>
  </div>
@stop