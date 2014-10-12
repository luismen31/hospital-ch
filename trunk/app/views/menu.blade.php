@extends ('layout')

@section ('title') Menú @stop

@section ('content')
	<h1>
	  <center>Menú para Administradores</center>
	</h1><hr>
	<div class="row">
		@if(!Auth::user()->id_rol == 1)
			{{--*/ $class = 'col-sm-6 col-md-6 col-lg-6'; /*--}}
		@else
			{{--*/ $class = 'col-sm-4 col-md-4 col-lg-4'; /*--}}
		@endif
		<div class="{{$class}}" style="text-align:center;">
			<a href="{{ route('colaborador.index') }}" class="btn btn-primary" style="margin:3px 0px;" data-toggle="tooltip" title="Hojas de Vida">
				<div class="menu fondo-menu">
					<i class="fa fa-file-text-o fa-4x"></i>
					<h5>Hojas de Vida</h5>
				</div>
			</a>
		</div>
		<div class="{{$class}}" style="text-align:center;">
			<a href="{{ route('cliente.index') }}" class="btn btn-primary" style="margin:3px 0px;" data-toggle="tooltip" title="Clientes Frecuentes">
				<div class="menu fondo-menu">
					<i class="fa fa-credit-card fa-4x"></i>
					<h5>Clientes Frecuentes</h5>
				</div>
			</a>
		</div>
		@if(Auth::user()->id_rol == 1)
		<div class="col-sm-4 col-md-4 col-lg-4" style="text-align:center;">
				<a href="{{ route('usuario.index') }}" class="btn btn-primary" style="margin:3px 0px;" data-toggle="tooltip" title="Usuarios">
					<div class="menu fondo-menu">
						<i class="fa fa-users fa-4x"></i>
						<h5>Usuarios</h5>
					</div>
				</a>
		</div>
		@endif
	</div>  
@stop