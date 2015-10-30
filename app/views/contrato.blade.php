@extends('layout')

@section('title')
	Hospital Chiriquí - Contrato Energía Solar
@stop


@section('css')
  {{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}  
@stop

@section('content')
	@include('slider')

	<div class="row">
		<hr>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<h1 class="titulo">Contrato de Energía Solar</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 col-md-6 col-lg-6">
			<p class="text-justify">
				Hospital Chiriquí y la empresa Greenwood Energy anunciaron hoy que desarrollarán y operarán de forma conjunta una planta solar fotovoltaica de 1 MW, en dos fases de 500 KWn, cada una. La primera fase de 500 KW se desarrollará sobre los techos del Hospital, incluyendo un parking fotovoltaico de unos 40 KW, que estará ubicado en el aparcamiento destinado para los vehículos. La segunda fase de 500Kw, será desarrollada sobre la superficie y techos del propio Hospital.<br><br>
				El proyecto dará comienzo en el tercer cuarto del año 2015 y cada instalación fotovoltaica de 500 KW será conectada en Net Metering (Balance Neto) en el medidor actual, cumpliendo con la regulación correspondiente para este tipo de instalaciones de ASEP.<br><br>
				Con esta iniciativa, el Hospital Chiriquí, con cada instalación de 500 KW, generará una totalidad de 850,000 KWh/año, que serán utilizados en su totalidad como autoconsumo de energía renovable, cumpliendo así con la responsabilidad social empresarial de contribuir con el medioambiente promoviendo una reducción de emisión de 435 Toneladas de CO2 anuales o el equivalente a plantar 870 árboles con una vida media de 50 años.<br><br>
			</p>
		</div>
		<div class="col-sm-6 col-md-6 col-lg-6">
			<p class="text-justify">
				Greenwood Energy financiará el 100% del desarrollo y construcción del proyecto para el Hospital Chiriquí. Cada una de las instalaciones de 500 KWN, incorporará 1,750 paneles solares policristalinos del fabricante JA Solar. El proyecto establece, en una tercera fase, el análisis de sistemas avanzados de almacenamiento de energía con baterías con tecnología de última generación, para conseguir un ahorro en la demanda de potencia del Hospital.<br><br>
				Con este proyecto, la empresa Greenwood Energy sigue consolidándose como constructor y operador de plantas solares fotovoltaicas en Panamá, donde el grupo ha lanzado un fuerte plan de expansión, siendo la única empresa que financia el 100% de la inversión de proyectos de autoconsumo solar, mientras que Hospital Chiriquí manifiesta, una vez más, su compromiso de contribuir con el medioambiente.

			</p>
		</div>	
	</div>
	<div class="row">
		<div class="col-lg-12">
			<h2 class="subtitulo">Galería</h2>
		</div>
		<hr>
		<div class='list-group gallery'>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/contrato_energia_solar/1.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/contrato_energia_solar/1.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/contrato_energia_solar/2.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/contrato_energia_solar/2.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/contrato_energia_solar/3.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/contrato_energia_solar/3.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/contrato_energia_solar/4.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/contrato_energia_solar/4.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/contrato_energia_solar/5.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/contrato_energia_solar/5.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/contrato_energia_solar/6.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/contrato_energia_solar/6.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/contrato_energia_solar/7.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/contrato_energia_solar/7.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>			
		</div>
	</div>
@stop