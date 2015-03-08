@extends ('layout')

@section('title')
	Hospital Chiriquí - Directorio
@stop

@section ('content')
	@include('slider')

	<div class="title-cont titulo">
	    <div class="fondo-title"></div>
	    <h2 class="text-left">Directorio m&eacute;dico</h2>
    </div>

	<div class="row">
		<div class="col-xs-12 col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
			<div class="row" style="margin-bottom:20px">
				<div class="col-xs-12">
					<input type="text" name="search" value="" class="form-control input-lg" id="buscar-medico" placeholder="Buscar M&eacute;dico">
				</div>
			</div>
			<div class="overthrow" style="overflow:auto">
				<table class="table table-bordered table-hover" id="table">					
					<thead>
						<tr class="info">
							<th width="33%">Secci&oacute;n</th>
							<th width="33%">Especialidad</th>
							<th width="33%">Extensión</th>
							<th width="33%">Teléfono</th>
						</tr>
						<tr>
							<th colspan="3">
								Central Telef&oacute;nica Hospital Chiriqu&iacute; - 774-0128
							</th>
						</tr>
					</thead>
					<tbody>
						{{--*/$sw=0;$var=0;/*--}}
						@foreach(Medico::where('id','>','0')->orderBy('id_ubicacion','desc')->get() as $medico)
							@if($sw == 0 || $var <> $medico->id_ubicacion)
								{{--*/$var = $medico->id_ubicacion;/*--}}
								{{--*/$sw=1;/*--}}
								<tr class="info">
									@if(empty($medico->id_ubicacion))
										<td colspan="4"><strong>Otras</strong></td>
									@else
										<td colspan="4"><strong>{{ Ubicacion::where('id', $medico->id_ubicacion)->first()->ubicacion }}</strong></td>
									@endif
									
								</tr>
							@endif
							<tr align="center">
								@if($medico->sexo == 0)
									{{--*/$dr = 'Dra.'/*--}}
								@else
									{{--*/$dr = 'Dr.'/*--}}
								@endif
								<td>{{ $dr }} {{ $medico->primer_nombre.' '.$medico->apellido_paterno }}</td>
								@if(empty($medico->id_especialidades_medicas))
									<td>NO DEFINIDA</td>
								@else
									<td>{{ EspecialidadMedica::where('id_especialidades_medicas', $medico->id_especialidades_medicas)->first()->descripcion }}</td>
								@endif
								
								<td>{{ $medico->extension }}</td>
								<td>{{ $medico->telefono }}</td>
							</tr>
						@endforeach
					</tbody>
				</table>				
			</div>
			<table class="table table-bordered table-hover" style="margin-top:10px">
				<thead>	
					<tr class="info">
						<th width="50%">Secciones Hospital</th>
						<th width="50%">Extensi&oacute;n</th>
					</tr>
				</thead>
				<tbody>
					<tr align="center">
					  <td >Deposito</td>
					  <td>1145</td>
					</tr>
					<tr align="center">
					  <td >Gerencia</td>
					  <td>1362</td>
					</tr>
					<tr align="center">
					  <td>Laboratorio</td>
					  <td>1130</td>
					</tr>
					<tr align="center">
					  <td>Medical Fashion</td>
					  <td>3050</td>
					</tr>
					<tr align="center">
					  <td>Recepcion CINAM</td>
					  <td>2245</td>
					</tr>
					<tr align="center">
					  <td>Relaciones P&uacute;blicas </td>
					  <td>1361</td>
					</tr>
					<tr align="center">
					  <td>Seguros Hospital</td>
					  <td>1340</td>
					</tr>
					<tr align="center">
					  <td>Computo</td>
					  <td>3998</td>
					</tr>
					<tr align="center">
					  <td>Farmacia</td>
					  <td >1140 - 1141</td>
					</tr>
					<tr align="center">
					  <td>Informacion </td>
					  <td >1002 - 1003</td>
					</tr>
					<tr align="center">
					  <td>Admision</td>
					  <td>1342</td>
					</tr>
					<tr align="center">
					  <td >CXP Hospital</td>
					  <td>1300</td>
					</tr>
					<tr align="center">
					  <td >Cuarto 1</td>
					  <td>1201</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 2</td>
					  <td>1202</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 3</td>
					  <td >1203</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 4</td>
					  <td>1204</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 5</td>
					  <td>1205</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 6</td>
					  <td>1206</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 7</td>
					  <td>1207</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 8</td>
					  <td>1208</td>
					</tr>
					<tr align="center">
					  <td>Cuarto 9</td>
					  <td>1209</td>
					</tr>
					<tr align="center">
					  <td>Suit Junior A - B</td>
					  <td>1213 - 1214</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
@stop

@section('script')
	{{ HTML::script('assets/js/jquery.searchable-ie.js') }}
	<script type="text/javascript">
		$(function(){
			$('.table').searchable({
				searchField: '#buscar-medico',    
				onSearchActive : function( elem, term ) {
			        elem.show();
			    }
			});  
		});
	</script>
@stop