@extends ('layout')

@section('title')
	Hospital Chiriquí - Congreso 2014
@stop

@section ('content')
	@include('slider')
	<div class="row">
		<hr>
		<div class="col-md-7">
			<h2 class="subtitulo">XXVII Congreso Médico Hospital Chiriquí</h2>
			<div>
			  <p><b>TEMARIO</b></p>
			  <ul>
			    <li>La Cirugía bariátrica en Panamá </li>
                
			     <li> Un paso adelante, de la Bariátrica a la metabólica. </li>
		        <li>  Abordaje diagnóstico de Obesidad: de lo molecular a lo práctico.</li>
		        <li>  Tratamiento de la obesidad: cirugía vs tratamiento farmacológico?</li>
			      <li> Estrategias para disminuir la mortalidad materna<br />
			      <li> Manejo de preeclampsia severa</lil>
		        <li>Invaginación Intestinal - Pediatría</li>
			     <li>Patología del canal inguinal - Pediatría</li>
			     <li>Seminario de Oncología: Quimioterapia, Radioterapia y Radiocirugía	</li>
			     <li>Seminario Economía de la Salud: Perspectivas Futuras.</li>
			     <li>Cena -Conferencia</li>
			  </ul>
			</div>
			<h2 class="subtitulo">INFORMACION E INSCRIPCIONES</h2>
          <p>Relaciones Públicas---Srta. Dalis Vargas<br />
            774-0128 ext. 1370<br />
            relacionespublicas@hospitalchiriqui.com<br />
          </p>
          <p>Srta. Isabel Cáceres <br />
            777-8044 <br />
          gerencia@hospitalchiriqui.com			</p>
		</div>
		<div class="col-md-5" align="center"> <img src="{{ URL::to('img/congreso2015/congreso_original.jpg') }}" width="80%" class="img-rounded"></div>
	</div>
@stop