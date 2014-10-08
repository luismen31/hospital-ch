<!DOCTYPE html>
<html lang="es-ES">
  <head>
    <meta charset="UTF-8" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>@yield('title', 'Hospital Chiriqu&iacute;')</title>
    <link rel="shortcut icon" href='/hospital-ch/public/img/hospital.ico' type="image/x-icon">    
    {{-- Bootstrap --}}
    {{ HTML::style('assets/css/bootstrap.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/estilos.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/font-awesome.min.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/perfect-scrollbar.min.css', array('media' => 'screen')) }}
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
        <div class="navbar navbar-default navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="/hospital-ch/public/">Hospital Chiriqu&iacute; S.A.</a>
            </div>
            <div class="navbar-collapse collapse overthrow">
              <ul class="nav navbar-nav navbar-right">              
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Con&oacute;cenos <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li><a href="/hospital-ch/public/historia">Historia</a></li>
                  <li><a href="/hospital-ch/public/junta">Junta Directiva</a></li>
                  <li><a href="/hospital-ch/public/fundadores">Nuestros Fundadores</a></li>
                  <li><a href="/hospital-ch/public/mision">Misi&oacute;n y Visi&oacute;n</a></li>
                  </ul>
                </li>
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nuestros Doctores <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li><a href="/hospital-ch/public/directorio">Directorio y Especialidades</a></li>
                   <!--    <li><a href="#">Doctor en Línea</a></li>  -->
                  <!--  <li><a href="#">Nuestro doctor del Mes</a></li>-->
                  </ul>
                </li>
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Atenci&oacute;n Especializada <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li><a href="/hospital-ch/public/enfermeria">Nuestras Enfermeras</a></li>           
                  <!--   <li class="divider"></li> -->
                  <!--   <li class="nav-header">Maternidad</li>  -->
                  <!--    <li><a href="#">Obstetricia</a></li> -->
                  <!--     <li><a href="#">Labor y Parto</a></li> -->
                  <li><a href="/hospital-ch/public/neonatologia">Neonatolog&iacute;a</a></li>
                  <!--     <li><a href="#">Nutrici&oacute;n y Embarazo</a></li>   -->
                  <!--    <li><a href="#">Tamizaje</a></li> -->
                  </ul>
                </li>
              
                 
           <!--   ESTA SECCION FUE REMOVIDA EL 20 DE MAYO POR VANESSA         
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tecnolog&iacute;a de Punta <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li class="divider"></li>
                  <li class="nav-header">Equipos</li>
                  <li><a href="#">Desintrometr&iacute;a Ósea</a></li>
                  <li><a href="#">Hemodin&acute;mica</a></li>
                  <li><a href="#">Hemodi&aacute;lisis </a></li>
                  <li><a href="#">Video Endoscop&iacute;a</a></li>
                  <li><a href="#">Cámara Hiperb&aacute;rica</a></li>
                  <li><a href="#">Mamograf&iacute;a </a></li>
                  <li><a href="#">Equipo Cardiovascular</a></li>
                  <li><a href="#">Transductor Lineal Phillip</a></li>
                  <li><a href="#">Equipo de Ultrasonido Phillip HD7XE</a></li>                
                  </ul>
                </li>  -->
                  
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hospitalizaci&oacute;n <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li><a href="/hospital-ch/public/hospitalizacion">Habitaciones</a></li>
                  <li><a href="/hospital-ch/public/admision">Admisi&oacute;n</a></li>
                  <li><a href="/hospital-ch/public/seguros">Seguros Nacionales e Internacionales</a></li>
                  <li><a href="/hospital-ch/public/registrobb">Registro de Nacimiento</a></li>
                  <!--   <li><a href="#">Turismo M&eacute;dico</a></li>  -->
                  <li class="divider"></li>
                  <li class="dropdown-header">Servicios Hospitalarios</li>
                  <li><a href="/hospital-ch/public/hemodialisis">Hemodi&aacute;lisis</a></li> 
                  <li><a href="/hospital-ch/public/cuidados">Cuidados Intensivos</a></li> 
                  <li><a href="/hospital-ch/public/quirofano">Quir&oacute;fano</a></li>
                  <li><a href="/hospital-ch/public/laboratorio">Laboratorio </a></li>
                  <li><a href="/hospital-ch/public/rayosx">Radiolog&iacute;a</a></li> 
                  <li><a href="/hospital-ch/public/urgencias">Urgencias</a></li>
                  <li><a href="/hospital-ch/public/capilla">Capilla</a></li>
                  <li><a href="/hospital-ch/public/farmacia">Farmacia</a></li> 
                  </ul>
                </li>
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Media Press <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <!--  <li><a href="#">Comunicado de Prensa</a></li> -->
                  <li><a href="/hospital-ch/public/compromiso">Eventos</a></li>
                  <li><a href="/hospital-ch/public/cintarosada">Campa&ntilde;as de Salud</a></li>
                  </ul>
                </li>
                
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Contacto <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li><a href="/hospital-ch/public/sugerencia">Buz&oacute;n de consultas y sugerencias</a></li>
                  <li><a href="/hospital-ch/public/system_resume">Hoja de Vida</a></li>                    
                  <li><a href="/hospital-ch-public/logincliente">Cliente Frecuente</a></li>
                @if(Auth::check())
                  <li><a href="/hospital-ch/public/logout">Cerrar Sesi&oacute;n</a></li> 
                @endif
                  </ul>
                </li>
              </ul>       
            </div><!-- Fin de Navbar -->
        </div> 
      </div>
      {{-- Begin page content --}}          
      <div class="container">    
        @yield('content')  
      </div>
    </div>

    <footer id="footer">        
      <div class="container">
        <p class="pull-right"><a href="#"><span class="glyphicon glyphicon-chevron-up"></span></a></p>
        <p>&copy; 2014 Hospital Chiriqu&iacute; SA. &middot; <a href="#">Privacidad</a> &middot; <a href="#">T&eacute;rminos</a> </p>
      </div>
    </footer>
    {{-- jQuery (necesario para Bootstrap's JavaScript) --}}
    {{-- Scripts para la usabilidad --}}
    {{ HTML::script('assets/js/perfect-scrollbar.min.js') }} 
    {{ HTML::script('assets/js/bootstrap.min.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-detect.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-init.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-polyfill.js') }}
    {{ HTML::script('assets/js/overthrow/overthrow-toss.js') }}
  </body>
 </html>
