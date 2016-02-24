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
        <div class="header">
          <div class="container-fluid">
                <div class="row">
                  <div class="col-sm-12 col-md-12 col-lg-12">
                    <a href="{{URL::to('/')}}" class="pull-left">
                      <img src="{{URL::to('img/logo-HCH.png')}}" class="img-responsive img-rounded img-head">
                    </a>
                    <div class="central">
                      <span class="fa fa-phone fa-1x"></span> Tel: <a href="tel:+507 774-0128">(+507) 774-0128</a>
                    </div>
                    <div id="navigate">
                      <div class="navbar navbar-default navbar-stat ic-top" role="navigation">
                        <div class="container-fluid  menu-content">
                          <div class="navbar-header">                            
                            <a href="{{URL::to('/')}}" class="btn-home"><span class="fa fa-home fa-2x"></span></a>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                              <span class="sr-only">Navegacion</span>                            
                              <span class="fa fa-bars fa-2x" style="color: #2A7DCF;"></span>
                              <!--span class="icon-bar"></span>
                              <span class="icon-bar"></span>
                              <span class="icon-bar"></span-->
                            </button>
                          </div>
                          <div class="navbar-collapse collapse overthrow">
                            <ul class="nav navbar-nav navbar-right" style="margin-right:0px;">              
                              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Con&oacute;cenos <b class="caret caret-icon"></b></a>
                                <ul class="dropdown-menu">
                                  <li><a href="{{ URL::to('historia')}}">Historia</a></li>
                                  <li><a href="{{URL::to('junta')}}">Junta Directiva</a></li>
                                  <li><a href="{{URL::to('fundadores')}}">Nuestros Fundadores</a></li>
                                  <li><a href="{{URL::to('mision')}}">Misi&oacute;n y Visi&oacute;n</a></li>
                                </ul>
                              </li>
                              
                              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nuestros Doctores <b class="caret caret-icon"></b></a>
                                <ul class="dropdown-menu">
                                  <li><a href="{{URL::to('directorio')}}">Directorio y Especialidades</a></li>
                                   <!--    <li><a href="#">Doctor en Línea</a></li>  -->
                                  <!--  <li><a href="#">Nuestro doctor del Mes</a></li>-->
                                </ul>
                              </li>
                              
                              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Atenci&oacute;n Especializada <b class="caret caret-icon"></b></a>
                                <ul class="dropdown-menu">
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
                            
                               
                         <!--   ESTA SECCION FUE REMOVIDA EL 20 DE MAYO POR VANESSA         
                              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tecnolog&iacute;a de Punta <b class="caret caret-icon"></b></a>
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
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Hospitalizaci&oacute;n <b class="caret caret-icon"></b></a>
                                <ul class="dropdown-menu">
                                  <li><a href="{{URL::to('hospitalizacion')}}">Habitaciones</a></li>
                                  <li><a href="{{URL::to('admision')}}">Admisi&oacute;n</a></li>
                                  <li><a href="{{URL::to('seguros')}}">Seguros Nacionales e Internacionales</a></li>
                                  <li><a href="{{URL::to('registrobb')}}">Registro de Nacimiento</a></li>
                                  <!--   <li><a href="#">Turismo M&eacute;dico</a></li>  -->
                                  <li class="divider"></li>
                                  <li class="dropdown-header">Servicios Hospitalarios</li>
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
                              
                              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Media Press <b class="caret caret-icon"></b></a>
                                <ul class="dropdown-menu">
                                <!--  <li><a href="#">Comunicado de Prensa</a></li> -->
                                  <li><a href="{{URL::to('compromiso')}}">Eventos</a></li>
                                  <li><a href="{{URL::to('cintarosada')}}">Campa&ntilde;as de Salud</a></li>
                                </ul>
                              </li>
                              
                              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Contacto <b class="caret caret-icon"></b></a>
                                <ul class="dropdown-menu" role="menu">
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
                          </div><!-- Fin de Navbar -->
                      </div> 
                    </div>

                  </div>
                </div>
              </div>

            </div>
          </div>
     


        
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
  </body>
 </html>
