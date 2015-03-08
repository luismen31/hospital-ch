@extends ('layout')

@section('title')
	Hospital Chiriquí - Neonatolog&iacute;a
@stop

@section ('content')
	@include('slider')

	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Atención Especializada</h2>
    </div>

	<div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 line-left">
			<div class="col-md-6">
				<h2 class="subtitulo">Neonatolog&iacute;a</h2>
				<p class="text-justify">
					Ese ser querido que acaba de llegar a la vida requiere de todo su amor y cari&ntilde;o y para ello el <strong>Hospital Chiriqu&iacute;</strong> cuenta con <em>modernas incubadoras</em> y equipos especiales que le brindar&aacute;n ese cuidado que ellos se merecen.
				</p>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/neonatologia.jpg" width="90%" class="img-rounded">
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('enfermeria')}}" class="list-group-item">Nuestras Enfermeras</a>     
                    <a href="{{URL::to('neonatologia')}}" class="list-group-item active">Neonatolog&iacute;a</a>
                </ul>
            </div>
		</div>
	</div>
@stop