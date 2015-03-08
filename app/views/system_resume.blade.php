@extends ('layout')

@section('title')
	Hospital Chiriquí
@stop

@section('content')
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12">
			<div class="login-body">
			    <article class="container-login center-block">
					<section>
						<ul id="top-bar" class="nav nav-tabs nav-justified">
							<li class="active"><a href="#login-access">Iniciar</a></li>
							<li><a href="{{URL::to('colaborador')}}">Regístrese</a></li>
						</ul>
						<div class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
							<div id="login-access" class="tab-pane fade active in">
								<h2><i class="fa fa-sign-in"></i> Iniciar Sesi&oacute;n</h2>		
								{{ Form::open(array('url' => 'login', 'method' => 'POST', 'class' => 'form-horizontal', 'id' => 'login'), array('role' => 'form')) }}		             
						        @if(isset($error_login))
			                    	<div class="alert alert-danger" role="alert" style="text-align:center;font-weight:bold;">
			                    		<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true"><i class="fa fa-times"></i></span><span class="sr-only">Cerrar</span></button>
			                    		<strong>{{ $error_login }}</strong>
			                    	</div>              
			                    @endif				
									<div style="margin-bottom: 25px" class="input-group">
					                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
					                    {{ Form::text('user', null, array('class' => 'form-control input-lg', 'placeholder' => 'Cédula', 'required' => 'required')) }}                                       
					                </div>			                
					                @if($errors->has())
					                    <p style="color:#f00;text-align:center;"> {{ $errors->first('user') }}</p>                  
					                @endif 
									
									<div style="margin-bottom: 25px" class="input-group">
					                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
					                    {{ Form::password('password', array('class' => 'form-control input-lg', 'placeholder' => 'Contraseña', 'required' => 'required')) }}                 
					                </div>
					                
					                @if($errors->has())
					                    <p style="color:#f00;text-align:center;"> {{ $errors->first('password') }}</p>                  
					                @endif 
									
									<br/>
									<div class="form-group ">	
										<center>
											<i class="fa fa-circle-o-notch fa-spin fa-3x" id="loading" style="color:#428bca;margin-bottom:10px;display:none;"></i>
										</center>
										 <button type="submit" class="btn btn btn-block btn-primary">Iniciar  </button>											
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
					</section>
				</article>
			</div>
		</div>
	</div>
@stop
