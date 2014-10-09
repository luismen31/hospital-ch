@extends ('layout')

@section ('title') Menú @stop

@section ('content')
<h1>
  <center>Menú para Administradores</center>
</h1><hr>
  <center>  
    <a href="{{ route('colaborador.index') }}" class="btn btn-primary btn-sm" style="margin:3px 0px;" data-toggle="tooltip" title="Hojas de Vida"><h5>Hojas de Vida</h5></a><br>
    <a href="{{ route('cliente.index') }}" class="btn btn-primary btn-sm" style="margin:3px 0px;" data-toggle="tooltip" title="Clientes Frecuentes"><h5>Clientes Frecuentes</h5></a>
  </center>

@stop
