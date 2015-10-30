@extends('layout')

@section('title')
	Hospital Chiriquí - Congreso Médico 2015
@stop


@section('css')
  {{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}  
@stop

@section('content')
	@include('slider')
	<div class="row">
		<hr>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<h1 class="titulo">Congreso Médico 2015</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-8 col-md-8 col-lg-8">
			<p class="text-justify">
				Agradece el apoyo recibido  de los profesionales de la medicina, laboratorios, Empresas y proveedores para la realización del XXVII Congreso Médico <strong>“Actualizacion en Avances de la Ciencia Médica”</strong>;  donde se discutieron tópicos selectos en Hemato Oncología, Cirugía Pediatría, Ginecología-Obstetricia, Endocrinología, Economía de la Salud, Ortopedia;  el cual fue un factor determinante para el éxito  del mismo y de impacto en los programas de actualización y educación médica continua.
			</p>
		</div>	
		<div class="col-sm-4 col-md-4 col-lg-4">
			<a href="{{URL::to('img/congreso_medico/patrocinadores.jpg')}}" title="Patrocinadores del Congreso" class="fancybox" rel="ligthbox">
				<div class="zoom">
		        	<div style="height: 250px;overflow: hidden;margin-bottom: 20px;">
				        <div class="image-height">
				    		<img src="{{URL::to('img/congreso_medico/patrocinadores.jpg')}}" class="img-responsive">
				        </div>
				        <div class="zoom-caption">                  
				            <i class="fa fa-search-plus fa-4x"></i>            
				        </div>
				    </div>
		        </div>
			</a>
		</div>	
	</div>
	<div class="row">
		<div class="col-lg-12">
			<h2 class="subtitulo">Galería</h2>
		</div>
		<hr>
		<div class='list-group gallery'>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/congreso_medico/1.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/1.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/congreso_medico/2.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/2.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/congreso_medico/3.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/3.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/congreso_medico/4.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/4.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/congreso_medico/5.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/5.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/congreso_medico/6.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/6.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/congreso_medico/7.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/7.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/congreso_medico/8.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/8.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/congreso_medico/9.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/congreso_medico/9.jpg')}}" class="img-responsive">
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