@extends ('layout')

@section ('title') Menú @stop

@section ('content')
	<h1>
	  <center>Menú para Administradores</center>
	</h1><hr>
	<div class="row">
		@if(Auth::user()->id_rol == 1)
			{{--*/ $class = 'col-sm-4 col-md-4 col-lg-4'; /*--}}
			
		@elseif(Auth::user()->id_rol == 2)
			{{--*/ $class = 'col-sm-6 col-md-6 col-lg-6'; /*--}}
		@else
			{{--*/ $class = 'col-sm-12 col-md-12 col-lg-12'; /*--}}
		@endif
		
		@foreach(ModuloUsuario::where('id_rol', Auth::user()->id_rol)->get() as $modulos)
			{{--*/ $modulo = Modulo::find($modulos->id_modulo); /*--}}			
			<div class="{{$class}}" style="text-align:center;margin-bottom:20px;">
				<a href="{{ route(''.$modulo->ruta.'') }}" class="btn btn-primary" style="margin:3px 0px;" data-toggle="tooltip" title="{{{ $modulo->modulo }}}">
					<div class="menu fondo-menu">
						<i class="fa fa-{{{ $modulo->clase }}} fa-4x"></i>
						<h5>{{{ $modulo->modulo }}}</h5>
					</div>
				</a>
			</div>
			
		@endforeach
	</div>  
@stop
