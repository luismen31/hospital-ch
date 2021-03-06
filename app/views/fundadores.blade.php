@extends ('layout')

@section('title')
	Hospital Chiriquí - Fundadores
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
				<h2 class="subtitulo">Fundadores</h2>
				<p class="text-justify">
					F&eacute;lix Am&eacute;rico Abad&iacute;a, Hilda Alvarado de Candanedo, Tom&aacute;s Gabriel Arias, Heraclio Barr&iacute;a Stanziola, Octavio Bejerano, Alvaro Candanedo Miranda, Josefina Farrugia de Castrell&oacute;, Abel Castrell&oacute;n Garc&iacute;a (q.e.d), Yolanda Miriam Corsen, Juan Enrique Dames Ortiz, Manuel de la Cruz, Jos&eacute; Luis G&oacute;mez De La Lastra, Maribel De Le&oacute;n Lau, Celso de Le&oacute;n, Elga F&aacute;brega de Barr&iacute;a, Jos&eacute; Gallegos Aguirre, Ivo Guerra, Ricauter Hern&aacute;ndez, Daniel Kam Wong, F&eacute;lix L&aacute;mbiz Garay, Enrique Lao Cort&eacute;s. Amilcar Lezcano, Clemente Mart&iacute;nez, Dalys Miranda de D&iacute;az, Elvira Navarro, Ricardo D&iacute;az Guillen, Jorge NG, Gladys Novoa, Rubis P&eacute;rez de Aparicio, Egberto R&iacute;os Bedoya, Deylis S&aacute;nchez de Le&oacute;n, Blanca Galeotti Santamar&iacute;a, Mitzi Velasco de Arias, Ricardo Williams, Julio Santamar&iacute;a, Mar&iacute;a Niedda de Molina, Jos&eacute; Mezquita y Harry Xatruch.
				</p>
			</div>
			<div class="col-md-5" align="center"> 
				<img src="img/historia.jpg" width="90%" class="img-rounded">
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
    				<a href="{{ URL::to('historia')}}" class="list-group-item">Historia</a>
                    <a href="{{URL::to('junta')}}" class="list-group-item">Junta Directiva</a>
                    <a href="{{URL::to('fundadores')}}" class="list-group-item active">Nuestros Fundadores</a>
                    <a href="{{URL::to('mision')}}" class="list-group-item">Misi&oacute;n y Visi&oacute;n</a>                  
                </ul>
            </div>
		</div>
	</div>
@stop