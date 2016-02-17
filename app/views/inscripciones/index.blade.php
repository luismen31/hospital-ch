@extends('layout')
{{--*/$y = date('Y');/*--}}
@section('title')  Congreso Médico {{ $y }} @stop

@section('css')
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap-table/bootstrap-table.min.css') }}">
@append

@section('content')
	<h1>
		<a href="{{ url('menu') }}" class="pull-left btn btn-primary" title="Regresar"><i class="fa fa-arrow-left"></i></a>
	    <center> Congreso Médico {{ $y }}</center>
	</h1><hr>

	@if(Session::has('success'))
		<div class="alert alert-success">
			<h4><strong>Mensaje:</strong></h4>
			<p>{{ Session::get('success') }}</p>
		</div>
	@endif

	<h3><i class="fa fa-info-circle"></i> Información De Clientes Inscritos</h3>
	<div class="panel panel-primary">
		<div class="panel-heading">Inscritos al Congreso Médico {{ $y }}</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="filter-inscription">
					<thead>
						<th data-field="num">#</th>
						<th data-field="ced">Cédula</th>
						<th data-field="cli">Cliente</th>
						<th data-field="tipo">Tipo de Participante</th>
						<th data-field="cod">Código Slip</th>
						<th data-field="din">Monto</th>
						<th data-field="std">Estado</th>
						<th data-field="act">Acción</th>
					</thead>
				</table>
			</div>
		</div>
	</div>

@stop

@section('scripts')
	<script src="{{ asset('assets/js/bootstrap-table/bootstrap-table.min.js') }}"></script>	
    <script src="{{ asset('assets/js/bootstrap-table/locale/bootstrap-table-es-ES.min.js') }}"></script>
    <script type="text/javascript">
    	$(function(){
    		$('#filter-inscription').bootstrapTable({
    			url : baseurl+'/buscar/clientes-inscritos',
    			height: 500,
    			sidePagination: 'server',				
				pagination: true,
				showRefresh:true,
				refresh:{silent:true}
    		});
    	});
    </script>
@append