@extends ('layout')

@section('title')
	Hospital Chiriquí - Laboratorio
@stop

@section ('content')
	@include('slider')
	
	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Hospitalizaci&oacute;n</h2>
    </div>

	<div class="row">
		<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9 line-left">
			<div class="col-md-6">
				<h2 class="subtitulo">Laboratorio</h2>
				<p class="text-justify">
					Nuestro equipo de laboratoristas se encarga de realizar los diversos procesos de an&aacute;lisis para el diagn&oacute;stico cl&iacute;nico.<br/>
					Entre los tipos de pruebas que realizamos est&aacute;n:
					<div class="container-fluid">
						<ul class="text-justify">
						  <li>Qu&iacute;mica General
							<div class="container-fluid">
								<ul>
								  <li>Perfil lip&iacute;dico, Prote&iacute;nas totales, y fraccionadas, Transaminasas, Electrolitos, Drogas terap&eacute;uticas (digoxina,litio,fenbarbital y epamin), Glicemia, Acido &uacute;rico, Hierro, Colinesterasa, Amilasa y Lipasa.</li>
								</ul>
							</div>
						  </li>					  
						  <li>Qu&iacute;mica Especial
							<div class="container-fluid">
								<ul>
								  <li>Marcadores tumorales(CA-19-9, CEA, AFP, PSA total y libre)</li>
								  <li>Acido f&oacute;lico, Vitamina B12, Ferritina, Anti-CCP, % saturaci&oacute;n de hierro, TIBC, prueba de embarazo s&eacute;rica y cuantificada.</li>
								</ul>
							</div>
						  </li>
						  <li>Hematolog&iacute;a
							<div class="container-fluid">
								<ul>
								  <li>BHC, Frotis de sangre perif&eacute;rica al hemat&oacute;logo, VES, solubilidad de la hemoglobina, Tipaje, Coombs Directo e indirecto, pruebas de coagulaci&oacute;n (Tiempo de protombina, tiempo de tromboplastina y fibrin&oacute;geno)</li>
								</ul>
							</div>
						  </li>
						  <li>Urian&aacute;lisis y Parasitolog&iacute;a
							<div class="container-fluid">
								<ul>
								  <li>Depuraci&oacute;n de creatinina, prote&iacute;na en orina 24 horas, prueba de embarazo en orina, Urian&aacute;lisis, nicotina, antidoping, Prote&iacute;na, Creatinina, Sodio, Potasio en orina al azar.</li>
								  <li>Heces generales, heces por azul de metileno, sangre oculta en las heces, Clostridium Difficille, heces por H. pilory, rotavirus y grasa en heces.</li>
								</ul>
							</div>
						  </li>
						  <li>Microbiolog&iacute;a
							<div class="container-fluid">
								<ul>
								  <li>Cultivos de orina, heces, l&iacute;quidos, secreciones y sangre.</li>
								  <li>Frotis de gran, KOH,BAAR Y SALINA.</li>
								</ul>
							</div>
						  </li>					
						  <li>Serolog&iacute;a
							<div class="container-fluid">
								<ul>
								  <li>HIV, Hepatitis C, HBsAg, Hepatitis core, ASO,factor Reumatoideo, Células LE, ant&iacute;genos febriles y VDRL.</li>
								</ul>
							</div>
						   </li>
						</ul>
					</div>
				</p>
			</div>
			<div class="col-md-6 mg-img-top" align="center">
				<img src="img/laboratorio.jpg" width="90%" class="img-rounded">
			</div>			
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
                	<a href="{{URL::to('hospitalizacion')}}"  class="list-group-item"> Habitaciones</a>
                    <a href="{{URL::to('admision')}}"  class="list-group-item"> Admisi&oacute;n</a>
                    <a href="{{URL::to('seguros')}}"  class="list-group-item"> Seguros Nacionales e Internacionales</a>
                    <a href="{{URL::to('registrobb')}}"  class="list-group-item"> Registro de Nacimiento</a>
                    <li class="dropdown-header">Servicios Hospitalarios</li>
                    <a href="{{URL::to('hemodialisis')}}"  class="list-group-item"> Hemodi&aacute;lisis</a> 
                    <a href="{{URL::to('cuidados')}}"  class="list-group-item"> Cuidados Intensivos</a> 
                    <a href="{{URL::to('quirofano')}}"  class="list-group-item"> Quir&oacute;fano</a>
                    <a href="{{URL::to('laboratorio')}}"  class="list-group-item active"> Laboratorio </a>
                    <a href="{{URL::to('rayosx')}}"  class="list-group-item"> Radiolog&iacute;a</a> 
                    <a href="{{URL::to('urgencias')}}"  class="list-group-item"> Urgencias</a>
                    <a href="{{URL::to('capilla')}}"  class="list-group-item"> Capilla</a>
                    <a href="{{URL::to('farmacia')}}"  class="list-group-item"> Farmacia</a>
                </ul>
            </div>
		</div>
	</div>
@stop