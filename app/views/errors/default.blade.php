<!DOCTYPE html>
<html lang="es-ES">
<head>
	<meta charset="UTF-8" >
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="cache-control" content="no-store" />
	<meta http-equiv="cache-control" content="must-revalidate" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
	<meta http-equiv="pragma" content="no-cache" />
    <title>{{ $title }}</title>
    <link rel="shortcut icon" href="{{ URL::to('img/hospital.ico') }}" type="image/x-icon">    
    {{-- Bootstrap --}}
    {{ HTML::style('assets/css/bootstrap.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/estilos.css', array('media' => 'screen')) }}
    {{ HTML::style('assets/css/font-awesome.min.css', array('media' => 'screen')) }}
</head>
<body style="background:#4994D4;">
	<div class="errors">
		<h1 class="text-center"><i class="fa fa-flash"></i> Error {{ $code }}</h1>
		<p class="text-center">{{ $message }}
		</p><br>
		<center>
			<a href="{{URL::to('/')}}" class="btn btn-default"><i class="fa fa-arrow-left"></i> Regresar</a>
		</center>
	</div>

</body>
</html>
