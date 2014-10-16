<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Mensaje de Sugerencia</title>
	<style type="text/css">
		body{color: #000;}
		label{font-size: 14px; font-weight: bold;}		
	</style>	
</head>
<body>
	<?php
		date_default_timezone_set('America/Panama');
		$hora = date('h:i:s a');		
		$dia = date('D');
		$num_dia = date('d');
		$mes = date('M');
		$year = date('Y');
	?>

	<label>HORA:</label>  {{ $hora }} <br/><br/>

	<label>FECHA:</label> {{ $dia.', '.$num_dia.' '.$mes.' '.$year }} <br/><br/><br/>
	<div>
		<label>Name:</label>  {{ $name }} - <label>Country: </label> {{ $country }}
	</div>
	<br/>
	<div>
		<label>Address:</label> {{ $email }} - <label>Phone: </label> {{ $phone }}
	</div>
	<br/><br/>
	

	{{ $msg }}
	<br/>
	
</body>
</html>