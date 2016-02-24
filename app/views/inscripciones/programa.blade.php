@extends('layout')
{{--*/$y = date('Y');/*--}}
@section('title')
	Programa del Congreso Médico {{ $y }}
@stop

@section('content')
	@include('slider')

	<div class="text-center">
		<h3 class="subtitulo">CONGRESO ANUAL HOSPITAL CHIRIQUÍ {{ $y }}</h3>
		<h4>Programa Preliminar</h4>
		<h4>Junio 30 - 2 de Julio {{ $y }}</h4>
		<h4>Lugar: Hotel Ciudad de David</h4>
		<h4>Comité Organizador: Dr. Eric Tortosa/ Dr. Jorge Sanchez </h4>
		<h4>Secretaria: Dalis - Relaciones Públicas/ Hosp. Chiriquí </h4>
	</div>

	<div class="row">
		<div class="col-sm-12">
			<h3 class="subtitulo">Día 1: Jueves 30 de Junio</h3>
			<div class="table-responsive">				
				<table class="dia1 table table-bordered table-congreso">
				  <tr>
				    <th class="dia1-6y8c table-hour">HORA</th>
				    <th class="dia1-6y8c">SALON 1</th>
				    <th class="dia1-6y8c">SALON 2</th>
				    <th class="dia1-6y8c">SALON 3</th>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">12:30 PM</td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-9hbo">APERTURA STANDS</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l" rowspan="2"></td>
				    <td class="dia1-mruk" rowspan="2">EMERGENCIAS 1</td>
				    <td class="dia1-yw4l" rowspan="2"></td>
				  </tr>
				  <tr>
				    <td class="dia1-7o34" rowspan="12">EXHIBICION</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">2:00 PM</td>
				    <td class="dia1-xulv">EMERGENCIAS HIPERTENSIVAS - Dr. Domingo Correa</td>
				    <td class="dia1-nrbg">TALLER ORTOSISTEMAS</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">2:25 PM</td>
				    <td class="dia1-xulv">HORA DORADA EN TRAUMA -  Dr. Mario Vilchez</td>
				    <td class="dia1-wv4z" rowspan="3">Dr. Juan M. Concha<br><br>TFN</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">2:50 PM</td>
				    <td class="dia1-xulv">EQUIPOS DE RESPUESTA A DESASTRES - Dr. Mario Vilchez</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">3:15 PM</td>
				    <td class="dia1-xulv">REANIMACION CON HIPOTENSION PERMISIVA - Dr. Victor Bruno</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">4:00 PM</td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-wv4z" rowspan="2">PHYLOS</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-edxg" rowspan="2">GINCECOLOGIA</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-wv4z" rowspan="2">PLACA TIBIA DISTAL</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">4:30 PM</td>
				    <td class="dia1-51l9">PISO PELVICO 1  Dr. Hugo Gonzalez</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">4:55 PM</td>
				    <td class="dia1-51l9">PISO PELVICO 2</td>
				    <td class="dia1-wv4z">PLACA LISS</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">5:20 PM</td>
				    <td class="dia1-51l9">LAPAROSOCPIA COMPLEJA GINECOLOGICA 1- Dr.Elio Esquivel</td>
				    <td class="dia1-wv4z">Taller Promed</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">5:45 PM</td>
				    <td class="dia1-51l9">LAPAROSOCPIA COMPLEJA GINECOLOGICA 2 - Dr. Zebede</td>
				    <td class="dia1-wv4z">Taller Smith &amp; Nephew</td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l hour gray">7:00 PM</td>
				    <td class="dia1-jg09">INAUGURACION</td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-16g6">CONFERENCIA MAGISTRAL - CUIDADO HUMANIZADO</td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-16g6">COCKTAIL BIENVENIDA</td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-16g6">CENA CONFERENCIA</td>
				    <td class="dia1-yw4l"></td>
				    <td class="dia1-yw4l"></td>
				  </tr>
				</table>
			</div>

			<h3 class="subtitulo">Día 2: Viernes 1 de Julio</h3>
			<div class="table-responsive">
				
				<table class="dia2 table table-bordered table-congreso">
				  <tr>
				    <th class="dia2-4ocu table-hour">HORA</th>
				    <th class="dia2-4ocu">SALON 1</th>
				    <th class="dia2-4ocu">SALON 2</th>
				    <th class="dia2-4ocu">SALON 3</th>
				  </tr>				 
				  <tr>
				    <td class="dia2-yw4l" rowspan="2"></td>
				    <td class="dia2-fim4" rowspan="2">SIMPOSIO DE ORTOPEDIA -</td>
				    <td class="dia2-mruk" rowspan="2">NEURO  Moderador: Dr. Carlos Valderrama</td>
				    <td class="dia2-7o34" rowspan="27">EXHIBICIÓN</td>
				  </tr>
				  <tr>
				  </tr>
				  <tr>
				    <td class="dia2-yw41 hour gray">8:00 AM</td>
				    <td class="dia2-3wwl">EPIDEMIOLOGÍA DE LA S FX DE CADERA - DR. Arles Pérez</td>
				    <td class="dia2-xulv">ALZHEIMER Y DEMENCIA VASCULAR          Dr. Carlos Valderrama</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw41 hour gray">8:25 AM</td>
				    <td class="dia2-3wwl">BLOEQUEO FASCIA ILIACA/ NERVIO FEMORAL - Dr. Elias Atencio</td>
				    <td class="dia2-xulv">ECV HEMORRAGICO                                     Dr. Andres Almendral</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw41 hour gray">8:50 AM</td>
				    <td class="dia2-3wwl">MANEJO DE LA ARTROSIS DEL TOBILLO  - Dr. Jose Luis Moreno</td>
				    <td class="dia2-xulv">NEUROIMAGENEOLOGIA                            Dr.  Alexis Palacios</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw41 hour gray">9:15 AM</td>
				    <td class="dia2-3wwl">SUPLEMENTOS NUTRICIONALES Y EJERCICIO - Dra. Vanessa Heilbronn</td>
				    <td class="dia2-xulv">REHABILITACION TRAS ECV                        Dra. Ismenia Castillero</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">10:00 AM</td>
				    <td class="dia2-9hbo" colspan="2">COFFEE BREAK</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l" rowspan="2"></td>
				    <td class="dia2-mruk" rowspan="2">ORTO 1 Moderador: Dr. Arkel Gonzalez / Dr. Eric Tortosa</td>
				    <td class="dia2-edxg" rowspan="2">CARDIO INTERVENCIONISTA Moderador Dr. Alexander Adames/ Dr. Chi Shing Man</td>
				  </tr>
				  <tr>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">10:30 AM</td>
				    <td class="dia2-xulv">CONTROVERSIAS EN EL USO DE ANTICOAGULACION EN ORTOPEDIA   Dr. Candido Amado</td>
				    <td class="dia2-51l9">SD.CORONARIO AGUDO - Dr. Alexander Adames</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">10:55 AM</td>
				    <td class="dia2-xulv">MANEJO MODERNO DEL PIE DIABETICO - Dr. Jorge Puerta</td>
				    <td class="dia2-51l9"></td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">11:20 AM</td>
				    <td class="dia2-xulv">DEFECTOS DE COBERTURA MIEMBRO INF. Dr. Juan M. Concha</td>
				    <td class="dia2-51l9">INTERVENCION CORONARIA PERCUTANEA COMPLEJA - Dr. Guering Eid-Lidt</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">11:45 AM</td>
				    <td class="dia2-xulv">FACTORES DE CREC. EN HERIDAS   Dr. Jorge Puerta</td>
				    <td class="dia2-51l9">CIRUGIA CARDIACA EN CHIRIQUI -  Dr. Chi Shing Man</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">12:30 PM</td>
				    <td class="dia2-9hbo" colspan="2">ALMUERZO</td>				    
				  </tr>
				  <tr>
				    <td class="dia2-yw4l" rowspan="2"></td>
				    <td class="dia2-nrbg" rowspan="2">ORTO 2  Moderador: Dr.Eric Tortosa/ Dr. Juan C. Pretto</td>
				    <td class="dia2-6y8c" rowspan="2">GASTRO     Moderador:  Dr. Jorge Sanchez/ Dr. Lucas De Leon</td>
				  </tr>
				  <tr>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">2:00 PM</td>
				    <td class="dia2-wv4z">TORNILLOS BIOABSORBIBLES - Dr. Jose Moreno</td>
				    <td class="dia2-chad">PANCREATITIS        Dr. Ivan Ramos</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">2:25 PM</td>
				    <td class="dia2-wv4z">USO DE ENDOBUTTON PARA RECONST.  LCA - Dr. Luis Amado</td>
				    <td class="dia2-chad">HIGADO GRASO     Dr. Enrique Adames</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">2:50 PM</td>
				    <td class="dia2-wv4z">EVALUACION DE LAS DISKINESIAS DEL HOMBRO - Dr. Luis Fuentes</td>
				    <td class="dia2-chad">US ENDOSCOPICO-  Dr. Ivan Ramos</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">3:15 PM</td>
				    <td class="dia2-wv4z">INESTABILIDAD GLENOHUMERAL  -Dr. Humberto Arrue</td>
				    <td class="dia2-chad">DISPEPSIA FUNCIONAL-   Dr. Enrique Adames</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">4:00 PM</td>
				    <td class="dia2-9hbo" colspan="2">REFRIGERIO</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l" rowspan="2"></td>
				    <td class="dia2-oraa" rowspan="2">ORTO 3 Moderador. Dr. Donaldo Baez / Dr. Juan Carlos Pretto</td>
				    <td class="dia2-fim4" rowspan="2">CIRUGIA GENERAL /UROLOGIA Moderador: Dr. Cesar Quintero  / Dr. Carlos Abadia</td>
				  </tr>
				  <tr>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">4:30 PM</td>
				    <td class="dia2-uo8f">LESIONES COMBINADAS PELVICAS Y ACETABULARES - Dr. Dan Segina</td>
				    <td class="dia2-3wwl">TRATAMIENTO MODERNO DE LA ENF LITIASICA URO -Dra. Marta Sanchez</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">4:55 PM</td>
				    <td class="dia2-uo8f">EXPERIENCIA LOCAL EN TR. PELVICO Y ACETABULAR - Dr. Jorge Velarde</td>
				    <td class="dia2-3wwl">CA GASTRICO_ TX LAPAROSCOPICO -  Dr. Jose Murillo</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">5:20 PM</td>
				    <td class="dia2-uo8f">ABORDAJE A LESIONES COMPLEJAS DEL CODO -  Dr. Juan Carlos Pretto</td>
				    <td class="dia2-3wwl">MANEJO DE LA DISFUNCION ERECTIL  - Dra. Marta Sanchez</td>
				  </tr>
				  <tr>
				    <td class="dia2-yw4l hour gray">5:45 PM</td>
				    <td class="dia2-uo8f">MANEJO DE DEFECTOS DE COBERTURA DEL MIEMBRO SUP - Dr. Adalberto Mayorga</td>
				    <td class="dia2-3wwl">CIRUGIA LAPAROSCOPICA Y ENDOSCOPIA QUIRUGICA- Dr. Jose Murillo</td>
				  </tr>
				  
				  <tr>
				    <td class="dia2-yw4l hour gray">7:00 PM</td>
				    <td class="dia2-dmjv" colspan="3">CENA DEL PRESIDENTE</td>
				  </tr>
				</table>
			</div>

			<h3 class="subtitulo">Día 3: Sábado 2 de Julio</h3>
			<div class="table-responsive">				
				<table class="dia3 table table-bordered table-congreso">
				  <tr>
				    <th class="dia3-4ocu table-hour">HORA</th>
				    <th class="dia3-4ocu">SALON 1</th>
				    <th class="dia3-4ocu">SALON 2</th>
				    <th class="dia3-4ocu">SALON 3</th>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-mruk">CUIDADOS PALIATIVOS</td>
				    <td class="dia3-fim4">PEDIATRIA</td>
				    <td class="dia3-7o34" rowspan="12">EXHIBICION</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw41 hour gray">8:00 AM</td>
				    <td class="dia3-xulv">ASPECTOS ETICOS DE LOS CUIDADOS PALIATIVOS -  Dra. Bruna Chi</td>
				    <td class="dia3-3wwl">NUEVAS VACUNAS  - Dra. Ericka Ferguson</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw41 hour gray">8:25 AM</td>
				    <td class="dia3-xulv">MANEJO MEDICO E INTEVENCIONISTA DEL DOLOR  - Dr. Bolivar Escala</td>
				    <td class="dia3-3wwl">OBESIDAD EN LA INFANCIA - Dr. Juan Jose Serrano</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw41 hour gray">8:50 AM</td>
				    <td class="dia3-xulv">PREPARACION Y MANEJO DE INSULINO TERAPIAS-Mgter. Graciela Lopez</td>
				    <td class="dia3-3wwl">SINDROMES CONVULSIVOS EN LA INFANCIA -Dra. Hilda Candanedo</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw41 hour gray">9:15 AM</td>
				    <td class="dia3-xulv">PREVENCION DE INFECCIONES NOSOCOMIALES - Dra. Erika Ferguson</td>
				    <td class="dia3-3wwl">DIABETES INFANTIL Dr. Juan Jose Serrano</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l hour gray">10:00 AM</td>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-edxg">ENFERMERIA</td>
				    <td class="dia3-wv4z">MEDICAL MARKETING/ TRABAJOS LIBRES</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-51l9">amls abordaje paciente en cuarto urgencias - med y enf - Dr. Eric Ortega (2 tiempos)</td>
				    <td class="dia3-1x50"></td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l hour gray">10:30 AM</td>
				    <td class="dia3-51l9"></td>
				    <td class="dia3-wv4z">MEDICAL MARKETING - Gefferson Marin</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l hour gray">10:55 AM</td>
				    <td class="dia3-51l9">Deteccion y manejo de arritmias letales en urgencias  - Miss Sara</td>
				    <td class="dia3-wv4z">CÓMO HACER VIDEOS MEDICOS Dr. Deny Park</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l hour gray">11:20 AM</td>
				    <td class="dia3-51l9">Principios Basicos en el Manejo de Ventilación Mecanica - Dr. Mora</td>
				    <td class="dia3-wv4z">APPS MEDICAS QUE UD. DEDE CONOCER Dr. Deny Park</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l hour gray">11:45 AM</td>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-wv4z">TRAUMA ABDOMINAL CDO - LUIS M CABALLERO MR CIRUGIA</td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-yw4l">SD. POLAND - POSTER - LUIS M CABALLERO MR CIRUGIA</td>
				    <td class="dia3-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l hour gray">12:30 PM</td>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-51l9">DR. BARRIA CIERRE DE CONGRESO  -</td>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-51l9">HOSPITAL CHIRIQUI: PRESENTE, PASADO Y FUTURO</td>
				    <td class="dia3-yw4l"></td>
				    <td class="dia3-yw4l"></td>
				  </tr>
				  <tr>
				    <td class="dia3-yw4l hour gray">7:00 PM</td>
				    <td class="dia3-yt8t" colspan="3">CENA DE ANIVERSARIO DE FUNDACION HOSPITAL CHIRIQUI</td>
				  </tr>
				</table>
			</div>
		</div>
	</div>
@stop