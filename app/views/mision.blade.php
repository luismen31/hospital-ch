@extends ('layout')

@section('title')
	Hospital Chiriquí - Misi&oacute;n
@stop

@section ('content')
	@include('slider')

	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Con&oacute;cenos</h2>
    </div>

	<div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 line-left">	
			<div class="col-md-7">
				<h2 class="subtitulo">Misi&oacute;n</h2>
				<p class="text-justify">
					Proporcionar una atenci&oacute;n &oacute;ptima a los pacientes en estado cr&iacute;tico o potencialmente cr&iacute;ticos y satisfacer sus necesidades y expectativas mediante la prestaci&oacute;n de unos cuidados de enfermer&iacute;a especializados, con la m&aacute;xima calidad y seguridad basados en el Modelo de Virginia Henderson.
				</p>
				<h2 class="subtitulo">Visi&oacute;n</h2>
				<p class="text-justify">
					Proveer el mejor servicio con calidad y eficiencia al paciente en estado cr&iacute;tico mediante el apoyo de nuevas tecnolog&iacute;a acorde a la modernizaci&oacute;n y con el mejor recurso humano disponible.
				</p>
			</div>
			<div class="col-md-5" align="center"> 
				<img src="img/hospitalchiriqui.jpg" width="90%" class="img-rounded">
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
    				<a href="{{ URL::to('historia')}}" class="list-group-item">Historia</a>
                    <a href="{{URL::to('junta')}}" class="list-group-item">Junta Directiva</a>
                    <a href="{{URL::to('fundadores')}}" class="list-group-item">Nuestros Fundadores</a>
                    <a href="{{URL::to('mision')}}" class="list-group-item active">Misi&oacute;n y Visi&oacute;n</a>                  
                </ul>
            </div>
		</div>
	</div>
@stop