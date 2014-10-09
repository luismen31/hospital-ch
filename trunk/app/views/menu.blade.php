@extends ('layout')

@section ('title') Menú @stop

@section ('content')
<h1>
  <center>Menú para Administradores</center>
</h1><hr>
  <center>  
    <a href="{{ route('colaborador.index') }}" class="btn btn-primary btn-sm" style="margin:3px 0px;" data-toggle="tooltip" title="Hojas de Vida">Hojas de Vida</a><br>
    <a href="{{ route('colaborador.index') }}" class="btn btn-primary btn-sm" style="margin:3px 0px;" data-toggle="tooltip" title="Clientes Frecuentes">Clientes Frecuentes</a>
  </center>

@stop
