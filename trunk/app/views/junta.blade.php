@extends ('layout')

@section('title')
	Hospital Chiriquí - Junta Directiva
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
				<h2 class="subtitulo">Junta Directiva</h2>
				<p class="text-justify">
					A principios de la d&eacute;cada de los 80 participaron un n&uacute;mero considerable de j&oacute;venes profesionales de la medicina, quienes tuvieron el privilegio de obtener capacitaciones en centros hospitalarios de diferentes partes del mundo. De all&iacute; en adelante es cuando se fund&oacute; en el mes de mayo de 1986 la Sociedad Hospital Chiriquí con el apoyo de distinguidos empresarios del pa&iacute;s. Finalmente se inici&oacute; la construcci&oacute;n de este centro hospitalario con una amplia &aacute;rea aproximada de 12,500 mts2 bajo la direcci&oacute;n del Arquitecto Lettfalah Nader.
					El Hospital Chiriqu&iacute; abri&oacute; sus puertas a la comunidad paname&ntilde;a el 2 de julio de 1988 compuesto por  un  completo equipo de 40 profesionales y especialistas m&eacute;dicos,  orientados en brindar un servicio de altos est&aacute;ndares de calidad y poniendo en pr&aacute;ctica los principios &eacute;ticos y morales que nos ha distinguido hasta el presente. 
					La necesidad de crear el Hospital Chiriqu&iacute; surgi&oacute; a ra&iacute;z de introducir un centro hospitalario de atenci&oacute;n privada especializada y proyectada en satisfacer un servicio m&eacute;dico y tecnol&oacute;gico  a la vanguardia. Al priorizar las exigencias de nuestros pacientes nos hemos visto en la tarea de mantener la constante renovaci&oacute;n a nivel tecnol&oacute;gico y en los servicios m&eacute;dico adecuando nuestras  modernas infraestructuras a las exigencias del mercado y de acuerdo a la diversidad de especialidades m&eacute;dicas que cada a&ntilde;o vamos incorporando.

					A trav&eacute;s de los a&ntilde;os, Hospital Chiriqu&iacute; ha ganado reconocimiento en el sector de salud privada por el crecimiento en el censo de los pacientes, la incorporaci&oacute;n de nuevas especialidades m&eacute;dicas, la inversi&oacute;n en la &uacute;ltima tecnolog&iacute;a en equipos m&eacute;dicos e infraestructura y un recurso humano capacitado en proporcionar un servicio m&eacute;dico eficiente para la comunidad paname&ntilde;a y extranjera.
				</p>
			</div>
			<div class="col-md-5  mg-img-top" align="center"> 
				<img src="img/medicos.jpg" width="100%" class="img-rounded">
			</div>
		</div>
		<div class="hidden-xs col-sm-3 col-md-3 col-lg-3">
			<div class="panel panel-default">
                <ul class="list-group">
    				<a href="{{ URL::to('historia')}}" class="list-group-item">Historia</a>
                    <a href="{{URL::to('junta')}}" class="list-group-item active">Junta Directiva</a>
                    <a href="{{URL::to('fundadores')}}" class="list-group-item">Nuestros Fundadores</a>
                    <a href="{{URL::to('mision')}}" class="list-group-item">Misi&oacute;n y Visi&oacute;n</a>                  
                </ul>
            </div>
		</div>
	</div>
@stop