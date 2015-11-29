@extends('layout')

@section('title')
	Hospital Chiriquí - Festividades Patrias
@stop

@section('css')
	{{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}
	
@stop

@section ('content')
	@include('slider')

	<div class="row">
		<hr>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<h1 class="titulo">Celebración de Fiestas Patrias</h1>
			<p class="text-justify">
				El Hospital Chiriquí, se siente orgulloso de conmemorar el mes de la Patria.
				<strong>FELICIDADES PANAM&Aacute;!!</strong>
			</p>			
		</div>
		<div class="col-lg-12">
			<h2 class="subtitulo">Galería</h2>
		</div>
		<hr>
		<div class='list-group gallery'>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/noviembre2015/noviembre-1.jpg')}}" data-fancybox-group="group_november" data-fancybox-type="image" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/noviembre2015/noviembre-1.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/noviembre2015/noviembre-2.jpg')}}" data-fancybox-group="group_november" data-fancybox-type="image" class="fancybox" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/noviembre2015/noviembre-2.jpg')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
			</div>
			<div class="col-sm-6 col-md-4 col-lg-3">
				<a href="{{URL::to('img/noviembre2015/Baile_Diablicos_Espejos.mp4')}}" class="fancybox media" data-fancybox-group="group_november" data-fancybox-type="iframe" title="Presentación de los Diablícos Espejos" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/noviembre2015/noviembre-3.png')}}" class="img-responsive">
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

@section('script')
<script type="text/javascript">
	jQuery(document).ready(function($){
	    $(".fancybox").fancybox({
		    // solves some issues with streamed media
		    iframe: {
		        preload: false
		    },
		    margin: [20, 60, 20, 60],
		    // Increase left/right margin for iframe content
		});
	}); // ready
</script>
@append