@extends('layout')

@section('title')
	Hospital Chiriquí - Canastilla
@stop


@section('css')
  {{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}  
@stop

@section('content')
	@include('slider')
	<div class="row">
		<hr>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<h1 class="titulo">Canastilla</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12">
			<p class="text-justify">
				En el marco de la celebración de su XXVII Aniversario de Fundación el Hospital Chiriquí obsequió una Canastilla a  la sra. Clementina Mitré,  residente en la comunidad de  Soloy quien dio a luz a una niña el 02 de julio.  Hizo entrega de la misma los Dres. Rubis Pérez y Daniel Kam acompañados de la Lic. Maribel Maldonado, directora Administrativa.
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
				<a href="{{URL::to('img/canastilla/canastilla_1.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/canastilla/canastilla_1.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/canastilla/canastilla_2.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/canastilla/canastilla_2.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/canastilla/canastilla_3.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/canastilla/canastilla_3.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a  href="{{URL::to('img/canastilla/canastilla_4.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/canastilla/canastilla_4.jpg')}}" class="img-responsive">
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