@extends ('layout')

@section('title')
	Hospital Chiriquí
@stop

@section('content')
	<div class="row" style="margin-top:70px;">
		<div class="col-md-4 col-md-push-7" align="center" style="margin-bottom:20px;">
			<img src="img/laboral.jpg" width="70%" class="img-rounded img-thumbnail"> 
		</div>
		<div class="col-md-5 col-md-offset-2 col-md-pull-4">
			<div class="panel panel-primary" >
			    <div class="panel-heading">
			        <div class="panel-title"><h4 style="padding-top:18px;">Iniciar Sesi&oacute;n</h4></div>
			    </div>     

			 	<div style="padding-top:30px" class="panel-body" >   
			        {{ Form::open(array('url' => 'login', 'method' => 'POST', 'class' => 'form-horizontal', 'id' => 'login'), array('role' => 'form')) }}		             
			        @if(isset($error_login))
                    	<div class="alert alert-danger" role="alert" style="text-align:center;font-weight:bold;">
                    		<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    		<strong>{{ $error_login }}</strong>
                    	</div>              
                    @endif
		                <div style="margin-bottom: 25px" class="input-group">
		                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
		                    {{ Form::text('user', null, array('class' => 'form-control', 'placeholder' => 'Cédula', 'required' => 'required')) }}                                       
		                </div>
		                
		                @if($errors->has())
		                    <p style="color:#f00;text-align:center;"> {{ $errors->first('user') }}</p>                  
		                @endif   

		                <div style="margin-bottom: 25px" class="input-group">
		                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
		                    {{ Form::password('password', array('class' => 'form-control', 'placeholder' => 'Contraseña', 'required' => 'required')) }}                 
		                </div>
		                
		                @if($errors->has())
		                    <p style="color:#f00;text-align:center;"> {{ $errors->first('password') }}</p>                  
		                @endif                
	                    <div style="margin-top:10px" class="form-group">
                			<center>
                				<i class="fa fa-circle-o-notch fa-spin fa-3x" id="loading" style="color:#428bca;margin-bottom:10px;display:none;"></i>
	                          <button type="submit" class="btn btn-success">Iniciar  </button>
	                          <a href="/hospital-ch/public/colaborador" class="btn btn-primary">Registrese</a>
                			</center>
	                    </div>

		                <script>		
		                	$(document).ready(function() {
							    $("#login").submit(function() {
							        $('#loading').show(); 
							        $('.btn').hide();
							        return true; 
							    });
		                	});                	
		                </script>                  
			        {{ Form::close() }}    
			    </div> 
			</div>
		</div>
	</div>
@stop
