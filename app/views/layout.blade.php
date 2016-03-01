<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="cache-control" content="max-age=0" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="cache-control" content="no-store" />
		<meta http-equiv="cache-control" content="must-revalidate" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
		<meta http-equiv="pragma" content="no-cache" />
    <title>@yield('title', 'Hospital Chiriqu&iacute;')</title>
    <link rel="shortcut icon" href="{{ URL::to('img/hospital.ico') }}" type="image/x-icon">    
    {{-- Bootstrap --}}
    {{ HTML::style('assets/css/bootstrap.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/estilos.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/font-awesome.min.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/perfect-scrollbar.min.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/owl_carousel/owl.carousel.css') }}
    {{ HTML::style('assets/css/bootstrap-datetimepicker.min.css') }}    
    @yield('css')
    {{-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries --}}
    <!--[if lt IE 9]>
        {{ HTML::script('assets/js/html5shiv.js') }}
        {{ HTML::script('assets/js/respond.min.js') }}
    <![endif]-->
    {{ HTML::script('assets/js/jquery.js') }}
    @yield('scripts')  
  </head>
  <body>    
      <div id="wrap">     
        <header>
          <div class="contenedor">
            <div class="contenedor-head">              
              <div class="head">
                <div class="pull-left">
                  <a href="{{ URL::to('/') }}">
                    <img src="{{URL::to('img/logo-HCH.png')}}">
                  </a> 
                </div>                
                <div class="pull-right">
                   <a href="tel:+507 774-0128"><span class="fa fa-phone fa-1x"></span> <strong>Tel: (+507) 774-0128</strong></a>
                </div>
              </div>
            </div>
            <div class="menu_bar">
              <a href="#" class="bt-menu"><span class="fa fa-bars"></span>Menú</a>
            </div>
            <nav class="menu">
              <ul>
                <li><a href="{{ URL::to('/') }}"><i class="fa fa-home"></i> Inicio</a></li>
                <li>
                  <a href="#" data-id="drop1" class="dropdown-toggle">
                    Con&oacute;cenos <b class="caret caret-icon"></b>
                  </a>
                  <ul class="menu-dropdown children" id="drop1">
                    <li><a href="{{ URL::to('historia')}}">Historia</a></li>
                    <li><a href="{{URL::to('junta')}}">Junta Directiva</a></li>
                    <li><a href="{{URL::to('fundadores')}}">Nuestros Fundadores</a></li>
                    <li><a href="{{URL::to('mision')}}">Misi&oacute;n y Visi&oacute;n</a></li>
                  </ul>
                </li>         
                <li>
                    <a href="#" class="dropdown-toggle" data-id="drop2">
                      Nuestros Doctores <b class="caret caret-icon"></b>
                    </a>
                    <ul class="menu-dropdown children" id="drop2">
                      <li><a href="{{URL::to('directorio')}}">Directorio y Especialidades</a></li>
                       <!--    <li><a href="#">Doctor en Línea</a></li>  -->
                      <!--  <li><a href="#">Nuestro doctor del Mes</a></li>-->
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-id="drop3">Atenci&oacute;n Especializada <b class="caret caret-icon"></b></a>
                    <ul class="menu-dropdown children" id="drop3">
                      <li><a href="{{URL::to('enfermeria')}}">Nuestras Enfermeras</a></li>           
                      <!--   <li class="divider"></li> -->
                      <!--   <li class="nav-header">Maternidad</li>  -->
                      <!--    <li><a href="#">Obstetricia</a></li> -->
                      <!--     <li><a href="#">Labor y Parto</a></li> -->
                      <li><a href="{{URL::to('neonatologia')}}">Neonatolog&iacute;a</a></li>
                      <!--     <li><a href="#">Nutrici&oacute;n y Embarazo</a></li>   -->
                      <!--    <li><a href="#">Tamizaje</a></li> -->
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-id="drop4">Hospitalizaci&oacute;n <b class="caret caret-icon"></b></a>
                    <ul class="menu-dropdown children" id="drop4">
                      <li><a href="{{URL::to('hospitalizacion')}}">Habitaciones</a></li>
                      <li><a href="{{URL::to('admision')}}">Admisi&oacute;n</a></li>
                      <li><a href="{{URL::to('seguros')}}">Seguros Nacionales e Internacionales</a></li>
                      <li><a href="{{URL::to('registrobb')}}">Registro de Nacimiento</a></li>
                      <!--   <li><a href="#">Turismo M&eacute;dico</a></li>  -->
                      <li class="divider"></li>
                      <li class="dropdown-header list-head">Servicios Hospitalarios</li>
                      <li><a href="{{URL::to('hemodialisis')}}">Hemodi&aacute;lisis</a></li> 
                      <li><a href="{{URL::to('cuidados')}}">Cuidados Intensivos</a></li> 
                      <li><a href="{{URL::to('quirofano')}}">Quir&oacute;fano</a></li>
                      <li><a href="{{URL::to('laboratorio')}}">Laboratorio </a></li>
                      <li><a href="{{URL::to('rayosx')}}">Radiolog&iacute;a</a></li> 
                      <li><a href="{{URL::to('urgencias')}}">Urgencias</a></li>
                      <li><a href="{{URL::to('capilla')}}">Capilla</a></li>
                      <li><a href="{{URL::to('farmacia')}}">Farmacia</a></li> 
                    </ul>
                </li>
                <li>
                    <a href="#" class="dropdown-toggle" data-id="drop5">Media Press <b class="caret caret-icon"></b></a>
                    <ul class="menu-dropdown children" id="drop5">
                    <!--  <li><a href="#">Comunicado de Prensa</a></li> -->
                      <li><a href="{{URL::to('compromiso')}}">Eventos</a></li>
                      <li><a href="{{URL::to('cintarosada')}}">Campa&ntilde;as de Salud</a></li>
                    </ul>
                </li>                            
                <li>
                    <a href="#" class="dropdown-toggle" data-id="drop6">Contacto <b class="caret caret-icon"></b></a>
                    <ul class="menu-dropdown children" id="drop6">
                      <li><a href="{{URL::to('sugerencia')}}">Buz&oacute;n de consultas y sugerencias</a></li>
                      <li><a href="{{URL::to('colaborador')}}">Regístrese (Hoja de Vida)</a></li>
                    </ul>
                </li>
                @if(!Auth::check())
                    <li class="sign"><a href="{{URL::to('system_resume')}}"><i class="fa fa-sign-in"></i> INICIAR SESIÓN</a></li>       
                @else
                    <li class="sign"><a href="{{URL::to('logout')}}"><i class="fa fa-sign-out"></i> CERRAR SESIÓN </a></li> 
                @endif
              </ul>
            </nav>
        </header>

        
      {{-- Begin page content --}}          
      <div id="main" class="clearf">
        <div class="container-fluid contenido">
          @yield('content')  
        </div>    
      </div>
    </div>

    <div id="footer">        
      <div class="container">
        <p class="pull-right"><a href="#" id="top" class="btn btn-primary"><span class="glyphicon glyphicon-chevron-up"></span></a></p>
        <p>{{ date('Y') }} Hospital Chiriqu&iacute; &copy; S.A. | <a href="#">Privacidad</a> | <a href="#">T&eacute;rminos</a> </p>
      </div>
    </div>
    {{-- jQuery (necesario para Bootstrap's JavaScript) --}}
    {{-- Scripts para la usabilidad --}}
    {{ HTML::script('assets/js/perfect-scrollbar.min.js') }} 
    {{ HTML::script('assets/js/bootstrap.min.js') }}
    {{ HTML::script('assets/js/moment.js') }}
    {{ HTML::script('assets/js/moment-with-locales.js') }}
    {{ HTML::script('assets/js/bootstrap-datetimepicker.min.js') }}
    <!-- Include js plugin -->
    <script type="text/javascript">
      var baseurl = '{{ url() }}';

      $(function(){
        $('.datepicker').datetimepicker({
          format: 'YYYY/MM/DD',
          locale: 'es'
        });
      });
    </script>
    {{ HTML::script('assets/js/owl.carousel.min.js') }}
    {{ HTML::script('assets/js/pace.min.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-detect.js') }}
    {{ HTML::script('assets/js/filtro.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-init.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-polyfill.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-toss.js') }}   
    {{ HTML::script('assets/js/responsiveslides.min.js')}}
    {{ HTML::script('assets/js/jquery.fancybox.js')}}
    @yield('script')     
    {{ HTML::script('assets/js/scripts.js') }}
    {{ HTML::script('assets/js/head-script.js') }}
  </body>
 </html>
