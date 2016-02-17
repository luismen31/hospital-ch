@extends ('layout')
{{--*/$y = date('Y');/*--}}
@section('title')
	Hospital Chiriquí - Congreso {{$y}}
@stop

@section('css')
	{{HTML::style('assets/css/jquery.fancybox.css', array('media' => 'screen', 'rel' => 'stylesheet'))}}
	
@stop

@section ('content')
	@if(Session::has('success'))
		<div class="alert alert-success">
			<h4><strong>Mensaje:</strong></h4>
			<p>{{ Session::get('success') }}</p>
		</div>
	@endif

	@include('slider')
	<div class="row">
		<hr>
		<div class="col-md-7">
			<h2 class="subtitulo">XXVIII Congreso Médico Hospital Chiriquí</h2>

			<p>El Hospital Chiriquí les invita cordialmente al Congreso Médico en su versión XXVIII, "Defrente a los Nuevos Retos del Futuro", realizado desde el 30 de junio al 2 de julio de 2016. </p>
			<div>
			  <p><strong>Los Temas a Tratar</strong></p>
			  <ul>
			    <li>Calidad de atención</li>
			    <li>Cardiología Interencionista</li>
			    <li>Cirugía Cardiaca</li>
			    <li>Gastroenterología</li>
			    <li>Infecciones Emergentes y Nosocomiales</li>
			    <li>Entre otros</li>
			  </ul>
			</div>
			<h2 class="subtitulo">INFORMACION E INSCRIPCIONES</h2>
			<div class="alert alert-info">
				<h5>
					<strong>Las inscripciones serán a partir del 15 de febrero.</strong>
				</h5>
				<h4>
					<a href="{{ route('inscripcion.create') }}" class="alert-link"><i class="fa fa-arrow-right"></i> INSCRÍBETE AQUÍ</a>
				</h4>
			</div>
          <p>Relaciones Públicas---Srta. Dalis Vargas<br />
            774-0128 ext. 1370<br />
            relacionespublicas@hospitalchiriqui.com<br />
          </p>
          <p>Srta. Isabel Cáceres <br />
            777-8044 <br />
          gerencia@hospitalchiriqui.com			</p>
		</div>
		<div class="col-md-5" align="center"> <img src="{{ URL::to('img/afiche_congreso.jpeg') }}" width="80%" class="img-rounded"></div>
	</div>
	<div class="row">
		<div class="col-sm-3">
		<h2 class="subtitulo">Videos</h2>
			<a href="{{URL::to('img/congreso2016.mp4')}}" class="fancybox media" data-fancybox-group="congreso" data-fancybox-type="iframe" rel="ligthbox">
					<div class="zoom">
			        	<div class="img-hidden">
					        <div class="image-height">
					    		<img src="{{URL::to('img/Congreso2016.png')}}" class="img-responsive">
					        </div>
					        <div class="zoom-caption">                  
					            <i class="fa fa-search-plus fa-4x"></i>            
					        </div>
					    </div>
			        </div>
				</a>
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