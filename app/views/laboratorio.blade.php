@extends ('layout')

@section('title')
	Hospital Chiriquí - Laboratorio
@stop

@section ('content')
	@include('slider')
	<div class="row">
		<hr>
		<div class="col-md-6">
			<h2>Laboratorio</h2>
			<p class="text-justify">
				Nuestro equipo de laboratoristas se encarga de realizar los diversos procesos de an&aacute;lisis para el diagn&oacute;stico cl&iacute;nico.<br/>
				Entre los tipos de pruebas que realizamos est&aacute;n:
				<ul class="text-justify">
				  <li>Qu&iacute;mica General
					<ul>
					  <li>Perfil lip&iacute;dico, Prote&iacute;nas totales, y fraccionadas, Transaminasas, Electrolitos, Drogas terap&eacute;uticas (digoxina,litio,fenbarbital y epamin), Glicemia, Acido &uacute;rico, Hierro, Colinesterasa, Amilasa y Lipasa.</li>
					</ul>
				  </li>					  
				  <li>Qu&iacute;mica Especial
					<ul>
					  <li>Marcadores tumorales(CA-19-9, CEA, AFP, PSA total y libre)</li>
					  <li>Acido f&oacute;lico, Vitamina B12, Ferritina, Anti-CCP, % saturaci&oacute;n de hierro, TIBC, prueba de embarazo s&eacute;rica y cuantificada.</li>
					</ul>
				  </li>
				  <li>Hematolog&iacute;a
					<ul>
					  <li>BHC, Frotis de sangre perif&eacute;rica al hemat&oacute;logo, VES, solubilidad de la hemoglobina, Tipaje, Coombs Directo e indirecto, pruebas de coagulaci&oacute;n (Tiempo de protombina, tiempo de tromboplastina y fibrin&oacute;geno)</li>
					</ul>
				  </li>
				  <li>Urian&aacute;lisis y Parasitolog&iacute;a
					<ul>
					  <li>Depuraci&oacute;n de creatinina, prote&iacute;na en orina 24 horas, prueba de embarazo en orina, Urian&aacute;lisis, nicotina, antidoping, Prote&iacute;na, Creatinina, Sodio, Potasio en orina al azar.</li>
					  <li>Heces generales, heces por azul de metileno, sangre oculta en las heces, Clostridium Difficille, heces por H. pilory, rotavirus y grasa en heces.</li>
					</ul>
				  </li>
				  <li>Microbiolog&iacute;a
					<ul>
					  <li>Cultivos de orina, heces, l&iacute;quidos, secreciones y sangre.</li>
					  <li>Frotis de gran, KOH,BAAR Y SALINA.</li>
					</ul>
				  </li>					
				  <li>Serolog&iacute;a
					<ul>
					  <li>HIV, Hepatitis C, HBsAg, Hepatitis core, ASO,factor Reumatoideo, Células LE, ant&iacute;genos febriles y VDRL.</li>
					</ul>
				  </li>
				</ul>
			</p>
		</div>
		<div class="col-md-6" align="center"><img src="img/laboratorio.jpg" width="90%" class="img-rounded"></div>
	</div>
@stop