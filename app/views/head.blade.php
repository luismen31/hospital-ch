<!DOCTYPE>
<html>
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
	{{ HTML::style('assets/css/bootstrap.css', array('media' => 'screen')) }}
	{{ HTML::style('assets/css/font-awesome.min.css', array('media' => 'screen')) }}
	<style type="text/css">
		* {
			padding:0;
			margin:0;
			-webkit-box-sizing:border-box;
			-moz-box-sizing:border-box;
			box-sizing:border-box;
		}
		body{
			margin-top: 130px;
		}
		.contenedor {
			width: 100%;
			margin:auto;
		}

		.contenedor p {
			margin-bottom:40px;
		}		
		.contenedor-head{
			width: 100%;
			padding: 10px;
			height: 75px;
			background-color: #fff;
		}
		.contenedor-head .head{			
			line-height: 55px;
			width: 100%;
		}
		.contenedor-head .head img{
			width: 53px;
		}
		.menu_bar{
			display: none;
		}
		header{
			position: fixed;
			top: 0px;
			width: 100%;
		}
		header nav {
			background:#2980b9;
			margin-bottom:10px;
			width: 100%;
			box-shadow:0px 2px 3px rgba(0,0,0,.3);
		}

		header nav ul {
			list-style: none;
		}

		header nav ul li {
			display:inline-block;
			position: relative;
		}

		header nav ul li a {
			color:#fff;
			display: block;
			padding:13px;
			text-decoration: none;
		}

		header nav ul li a:hover,
		header nav ul li a:active,
		header nav ul li a:focus{
			background:#eee;
			text-decoration: none;
			color: #3d3d3d;
		}

		header nav li .menu-dropdown{
			background-color: #eeeeee;
			display: none;
			position: absolute;			
			z-index: 1000;			    
		    width: 150%;		  
		    font -size: 14px;
		    text-align: left;
		    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    		box-shadow: 0 6px 12px rgba(0,0,0,.175);
		}

		header nav ul .menu-dropdown li{
			display: block;
			overflow: hidden;
		}

		header nav ul .menu-dropdown li a:hover{
			background:#c7c7c7; 
			color: #3d3d3d;
		}

		header nav ul .menu-dropdown li > a{
			display: block;
			color: #3d3d3d;
			font-size: 12px;
			padding: 8px;
		}
		/* para division del drop de hospitalizacion*/
		.list-head{
		    display: block;
		    padding: 12px 8px;
		    font-size: 14px;
		    font-weight: bold;
		    line-height: 0; 
		    color: #2980b9;
		}
		@media screen and (max-width: 1100px) {
			
			.menu_bar {
				display:block;
				width:100%;
				position: fixed;
				top:75px;
				background: #2980b9;
				box-shadow:0px 2px 3px rgba(0,0,0,.3);
			}

			.menu_bar .bt-menu {
				display: block;
				padding: 10px;
				color: #fff;
				overflow: hidden;
				font-size: 20px;
				font-weight: bold;
				text-decoration: none;
			}

			.menu_bar span {
				float: right;
				font-size: 30px;
			}

			header nav {
				width: 80%;
				height: calc(100% - 80px);
				position: fixed;
				right:100%;
				margin-top: 50px;
				overflow: scroll;
				background: #eeeeee;
			}

			header nav li ul{
				max-width: 100%;
			}
			header nav ul li {
				display: block;
				border-bottom:1px solid rgba(255,255,255,.5);
			}
			

			header nav ul li a {
				display: block;
				color: #3d3d3d;
			}
			header nav ul li a:hover {
			    color: #fff;
			    background: #2980b9;
			}
			header nav ul li .children {
				width: 100%;
				position: relative;
			}

			header nav ul li .children li a {
				margin-left:20px;
			}
			header nav ul li .caret {
				float: right;
			}
		}

		/* --- Clase que agregaremos cuando el usuario haga scroll --- */
		.menu-fixed {
			position:fixed;
			z-index:1000;
			top:0;
			/*max-width:1000px;*/
			left:0;
			width:100%;
			box-shadow:0px 2px 3px rgba(0,0,0,.3);
		}
	</style>
</head>
<body>
	<header>
		<div class="contenedor">
			<div class="contenedor-head">
				<!--div class="head pull-left">
					<a href="#">
						<img src="{{URL::to('img/logo-HCH.png')}}">
					</a>
				</div>
				<div class="head pull-right">
					<span class="fa fa-phone fa-1x"></span> Tel: <a href="tel:+507 774-0128">(+507) 774-0128</a>
				</div-->
				<div class="head">
					<div class="pull-left">
						<a href="#">
							<img src="{{URL::to('img/logo-HCH.png')}}">
						</a>
					</div>
					<div class="pull-right">
						<span class="fa fa-phone fa-1x"></span> Tel: <a href="tel:+507 774-0128">(+507) 774-0128</a>
					</div>
				</div>
			</div>
			<div class="menu_bar">
				<a href="#" class="bt-menu"><span class="fa fa-bars"></span>Menú</a>
			</div>
			<nav class="menu">
				<ul>					
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
	<div class="container-fluid">
		<h1>Baja la pagina para ver el menú</h1>
		<p>
			1.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</p>
		<p>
			2.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</p>
		<p>
			3.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		<p>
			4.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		<p>
			5.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		<p>
			5.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		<p>
			5.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		<p>
			5.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		<p>
			5.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		<p>
			5.- Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

		</p>
		</div>
	{{ HTML::script('assets/js/jquery.js') }}
 	{{ HTML::script('assets/js/bootstrap.min.js') }}
	<script type="text/javascript">
		$(document).ready(function(){
			
		 	
		 	$('.dropdown-toggle').click(function(e){
		 		e.preventDefault();
		 		var id = $(this).data('id');
		 		
		 		$('#'+id).slideToggle();
		 	});
		});

		$(document).ready(main);
 
		var contador = 1;
			 
			function main () {
				$('.menu_bar').click(function(){
					if (contador == 1) {
						$('nav').animate({
							left: '0'
						});
						contador = 0;
					} else {
						contador = 1;
						$('nav').animate({
							left: '-100%'
						});
					}
				});
			 
				// Mostramos y ocultamos submenus
				$('.submenu').click(function(){
					$(this).children('.children').slideToggle();
				});
			}
	</script>
</body>
</html>
