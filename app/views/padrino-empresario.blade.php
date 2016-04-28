@extends ('layout')

@section('title')
	Hospital Chiriquí - Padrino Empresario
@stop

@section('css')
  {{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}  
@stop

@section ('content')
	@include('slider')

	<div class="row">
		<hr>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<h1 class="titulo">Padrino Empresario</h1>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12">
			<p class="text-justify">
				El Hospital Chiriquí  como parte del compromiso de responsabilidad social, apoya el Programa “Padrino Empresario” que brinda la oportunidad de trabajo de medio tiempo a jóvenes estudiantes de secundaria.<br><br>

				El actual participante de este programa en el  Hospital Chiriquí, el joven José Núñez,  tuvo la oportunidad de obsequiar souvenir  así como Información de Prevención del Zica y Medidas de Prevención contra Influenza A H1N1; en la Feria Internacional de David en el  STAND DEL MIDES.
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
				<a href="{{URL::to('img/padrino_empresario/padrino_empresario_1.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/padrino_empresario/padrino_empresario_1.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/padrino_empresario/padrino_empresario_2.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/padrino_empresario/padrino_empresario_2.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/padrino_empresario/padrino_empresario_3.jpg')}}" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/padrino_empresario/padrino_empresario_3.jpg')}}" class="img-responsive">
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