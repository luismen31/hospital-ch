@extends ('layout')

@section('title')
	Hospital Chiriquí - Enfermer&iacute;a
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
				<h2 class="subtitulo">Enfermer&iacute;a</h2>
				<p class="text-justify">
				El servicio de enfermer&iacute;a del Hospital Chiriqu&iacute; brinda cuidados de calidad las 24 horas del d&iacute;a, en la diferentes especialidades m&eacute;dicas, tales como, Obstetricia, Neonatolog&iacute;a Area quir&uacute;rgica, Pediatr&iacute;a, Cuidados intensivos entre otros.  
				Todos estos servicios los brinda el equipo de Enfermer&iacute;a quienes en todo momento consideramos la Visi&oacute;n y Misi&oacute;n de la empresa, y para lograrlo nos preparamos d&iacute;a tras d&iacute;a, para adquirir un alto grado de competitividad y ser mejor de los mejores. 
				La materia prima de nuestro trabajo es el Ser Humano con sus necesidades f&iacute;sicas, emocionales y espirituales, por ello es que las enfermeras ofrecemos cuidados de enfermer&iacute;a humanizados con esmero y cari&ntilde;o</p>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/enfermeria2.jpg" width="80%" class="img-rounded">
			</div>
		</div>	
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('enfermeria')}}" class="list-group-item active">Nuestras Enfermeras</a>     
                    <a href="{{URL::to('neonatologia')}}" class="list-group-item">Neonatolog&iacute;a</a>
                </ul>
            </div>
		</div>
	</div>
@stop