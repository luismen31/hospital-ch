@extends ('layout')

@section ('title') Hoja de Vida @stop

@section ('content')
<h1>
  <center>Hoja de Vida</center>
</h1><hr>
{{ Form::model(array('role' => 'form')) }}


  <h3>Información Personal</h3>
  <div class="row">
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('usuario', 'Usuario:') }}
      {{ Form::text('usuario', null, array('placeholder' => 'Usuario', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('pass', 'Contraseña:') }}
      {{ Form::text('pass', null, array('placeholder' => 'Contraseña', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('cedula', 'Número de Cédula:') }}
      {{ Form::text('cedula', null, array('placeholder' => 'N&uacute;mero de C&eacute;dula', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('seguro', 'Número de Seguro Social:') }}
      {{ Form::text('seguro', null, array('placeholder' => 'N&uacute;mero de Seguro Social', 'class' => 'form-control', 'required' => 'required')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('primer_nombre', 'Primer Nombre:') }}
      {{ Form::text('primer_nombre', null, array('placeholder' => 'Primer Nombre', 'class' => 'form-control', 'required' => 'required')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('segundo_nombre', 'Segundo Nombre:') }}
      {{ Form::text('segundo_nombre', null, array('placeholder' => 'Segundo Nombre', 'class' => 'form-control')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('apellido_paterno', 'Apellido Paterno:') }}
      {{ Form::text('apellido_paterno', null, array('placeholder' => 'Apellido Paterno', 'class' => 'form-control', 'required' => 'required')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('apellido_materno', 'Apellido Materno:') }}
      {{ Form::text('apellido_materno', null, array('placeholder' => 'Apellido Materno', 'class' => 'form-control')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('fecha_nacimiento', 'Fecha de Nacimiento:') }}
      {{ Form::date('fecha_nacimiento', null, array('class' => 'form-control', 'min' => '1950-01-01', 'max' => '2020-12-31')) }}
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('sexo', 'Sexo:') }}
      {{ Form::select('sexo',  array('null' => 'TIPO DE SEXO', '0' => 'FEMENINO', '1' => 'MASCULINO'), null, array('class' => 'form-control')); }}    
    </div> 
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('id_tipo_sanguineo', 'Tipo de Sangre:') }}
      {{ Form::select('id_tipo_sanguineo',  array('0' => 'SELECCIONE EL TIPO DE SANGRE', '1' => 'O+', '2' => 'O-', '3' => 'A+', '4' => 'A-', '5' => 'AB+', '6' => 'AB-', '7' => 'B+', '8' => 'B-'), null, array('class' => 'form-control')); }}    
    </div>   
   </div>
   

  <div class="row" style="margin-top:0px;">
	<h3>Datos de Contacto Dirección</h3><br>   
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('celular', 'Celular:') }}
      {{ Form::text('celular', null, array('placeholder' => 'Celular', 'class' => 'form-control')) }}        
    </div>
	 <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('telefono_residencia', 'Telefono de Residencia:') }}
      {{ Form::text('telefono_residencia', null, array('placeholder' => 'Telefono de Residencia', 'class' => 'form-control')) }}        
    </div>
   <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('telefono_oficina', 'Telefono de Oficina:') }}
      {{ Form::text('telefono_oficina', null, array('placeholder' => 'Telefono de Oficina', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('email', 'E-Mail:') }}
      {{ Form::text('email', null, array('placeholder' => 'E-Mail', 'class' => 'form-control')) }}        
    </div>
   <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('direccion', 'Dirección:') }}
      {{ Form::text('direccion', null, array('placeholder' => 'Dirección', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('lugar_residencia', 'Lugar de Residencia:') }}
      {{ Form::text('lugar_residencia', null, array('placeholder' => 'Lugar de Residencia', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('nacionalidad', 'Nacionalidad:') }}
      {{ Form::text('nacionalidad', null, array('placeholder' => 'Nacionalidad', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('estado', 'Estado Civil:') }}
      {{ Form::text('estado', null, array('placeholder' => 'Estado Civil', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('facebook', 'Facebook:') }}
      {{ Form::text('facebook', null, array('placeholder' => 'Facebook', 'class' => 'form-control')) }}        
    </div>
    <div class="form-group col-sm-4 col-md-4 col-lg-4">
      {{ Form::label('twitter', 'Twitter:') }}
      {{ Form::text('twitter', null, array('placeholder' => 'Twitter', 'class' => 'form-control')) }}        
    </div>
   </div>


   <div class="row" style="margin-top:0px;">
    <h3>Información Laboral</h3><br> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('aplicacion', 'Área de Aplicación:') }}
        {{ Form::select('aplicacion',  array('null' => 'ÁREA DE APLICACIÓN', '1' => 'CONTABILIDAD', '2' => 'ENFERMERIA', '3' => 'ADMINISTRACIÓN', '4' => 'RAYOS X', '5' => 'LABORATORIO', '6' => 'SEGURIDAD', '7' => 'INFORMÁTICA', '8' => 'URGENCIAS', '9' => 'MERCADEO', '10' => 'RECURSOS HUMANOS', '11' => 'SERVICIOS MÚLTIPLES'), null, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudios', 'Estudios:') }}
        {{ Form::select('estudios',  array('null' => 'ESTUDIOS', '1' => 'PRIMARIA', '2' => 'SECUNDARIA', '3' => 'LICENCIATURA', '4' => 'POST-GRADO', '5' => 'MAESTRíA', '6' => 'DOCTORADO'), null, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudio_1', 'Estudio 1:') }}
        {{ Form::textarea('estudio_1', null, array('placeholder' => 'Estudio 1', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudio_2', 'Estudio 2:') }}
        {{ Form::textarea('estudio_2', null, array('placeholder' => 'Estudio 2', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('estudio_3', 'Estudio 3:') }}
        {{ Form::textarea('estudio_3', null, array('placeholder' => 'Estudio 3', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('experiencia_1', 'Experiencia 1:') }}
        {{ Form::textarea('experiencia_1', null, array('placeholder' => 'Experiencia 1', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('experiencia_2', 'Experiencia 2:') }}
        {{ Form::textarea('experiencia_2', null, array('placeholder' => 'Experiencia 2', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('experiencia_3', 'Experiencia 3:') }}
        {{ Form::textarea('experiencia_3', null, array('placeholder' => 'Experiencia 3', 'class' => 'form-control', 'size' => '1x1')) }}        
      </div>
   </div>


  <div class="row" style="margin-top:0px;">
      <h3>Idiomas</h3><br> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('idioma_1', 'Idioma 1:') }}
        {{ Form::select('idioma_1',  array('null' => 'IDIOMA 1', '1' => 'ESPAÑOL', '2' => 'INGLÉS', '3' => 'MANDARÍN', '4' => 'HOLANDÉS', '5' => 'FRANCÉS', '6' => 'ITALIANO', '7' => 'ÁRABE', '8' => 'PORTUGUÉS', '9' => 'HEBREO'), null, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('nivel_1', 'Nivel 1:') }}
        {{ Form::select('nivel_1',  array('null' => 'NIVEL 1', '1' => 'BÁSICO', '2' => 'INTERMEDIO', '3' => 'AVANZADO'), null, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('idioma_2', 'Idioma 2:') }}
        {{ Form::select('idioma_2',  array('null' => 'IDIOMA 2', '1' => 'ESPAÑOL', '2' => 'INGLÉS', '3' => 'MANDARÍN', '4' => 'HOLANDÉS', '5' => 'FRANCÉS', '6' => 'ITALIANO', '7' => 'ÁRABE', '8' => 'PORTUGUÉS', '9' => 'HEBREO'), null, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('nivel_2', 'Nivel 2:') }}
        {{ Form::select('nivel_2',  array('null' => 'NIVEL 2', '1' => 'BÁSICO', '2' => 'INTERMEDIO', '3' => 'AVANZADO'), null, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('idioma_3', 'Idioma 3:') }}
        {{ Form::select('idioma_3',  array('null' => 'IDIOMA 3', '1' => 'ESPAÑOL', '2' => 'INGLÉS', '3' => 'MANDARÍN', '4' => 'HOLANDÉS', '5' => 'FRANCÉS', '6' => 'ITALIANO', '7' => 'ÁRABE', '8' => 'PORTUGUÉS', '9' => 'HEBREO'), null, array('class' => 'form-control')); }}    
      </div> 
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('nivel_3', 'Nivel 3:') }}
        {{ Form::select('nivel_3',  array('null' => 'NIVEL 3', '1' => 'BÁSICO', '2' => 'INTERMEDIO', '3' => 'AVANZADO'), null, array('class' => 'form-control')); }}    
      </div> 
    </div>

    <div class="row" style="margin-top:0px;">
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('presion', 'Trabajo bajo Presión:') }}
        {{ Form::select('presion',  array('null' => 'BAJO PRESÍON', '0' => 'SI', '1' => 'NO'), null, array('class' => 'form-control')); }}    
      </div>
      <div class="form-group col-sm-4 col-md-4 col-lg-4">
        {{ Form::label('licencia', 'Licencia de Conducir:') }}
        {{ Form::select('licencia',  array('null' => 'LICENCIA DE CONDUCIR', '0' => 'SI', '1' => 'NO'), null, array('class' => 'form-control')); }}    
      </div> 
    </div>
  <div class="form-group col-sm-12 col-md-12 col-lg-12">
    <center>
      {{ Form::button('Salvar', array('type' => 'submit', 'class' => 'btn btn-primary')) }}
      <a class="btn btn-info">Limpiar Campos</a>
    </center>
  </div>

{{ Form::close() }}
  
 
  {{ Form::open(array('route' => array('datos.pacientes.destroy', 'USER_ID'), 'method' => 'DELETE', 'role' => 'form', 'id' => 'form-delete')) }}
  {{ Form::close() }}
  
  {{ HTML::script('assets/js/overthrow/overthrow-detect.js') }}
  {{ HTML::script('assets/js/overthrow/overthrow-init.js') }}
  {{ HTML::script('assets/js/overthrow/overthrow-polyfill.js') }}
  {{ HTML::script('assets/js/overthrow/overthrow-toss.js') }}
@stop
