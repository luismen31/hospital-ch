$(function() {
	//Se encarga de eliminar la flotacion y otros elementos de la navegacion
	$(window).resize(function(){
		if($(window).width() <= 1053 || $(window).width() >= 993 ){
		  //'float': 'none', 'position': 'relative', 'top': '0px', 'right':'0px', 'height': '100%' ORIGINAL
		  $('div #navigate').css({'float': 'none', 'height': '100%'});

		}else{              
		  $('div #navigate').removeAttr('style');
		}            
	});            
	//Funcion que permite agregar o quitar la clase con el fondo del nav
	$(window).scroll(function() {
		var header = $(".header");
		var img = header.find('img'); 
		var phone = header.find('.central');
		var nav = header.find('.navbar-default');           

		if ($(this).scrollTop() > 150){ 
		  img.removeClass('img-head').addClass('img-head-xs');
		  header.addClass("top-fixed"); 
		  phone.addClass('central-fixed');
		  nav.addClass('margin-nav');
		  $("#navigate").css({'top': '-10px'});                           
		}else{
		  img.removeClass('img-head-xs').addClass('img-head'); 
		  header.removeClass("top-fixed");
		  phone.removeClass('central-fixed');
		  nav.removeClass('margin-nav');
		  $("#navigate").css({'top': '0px'});                           
		}
	});

	//Funcion para cambiar la clase de barras adaptado a movil
	$('.navbar-toggle').on('click', function(e){
        var icon = $('.navbar-toggle').find('.fa');        
        if(icon.hasClass('fa-bars')){
          icon.removeClass('fa-bars').addClass('fa-times');              
        }else{
          icon.addClass('fa-bars').removeClass('fa-times');
        }
        e.preventDefault();
    });

	//Funcion para ir al top de la pagina realizando el llamado de la funcion subir
	$('#top').on('click', function(e){
		$('html,body').animate({
			scrollTop: 0 
		},420);
		e.preventDefault();
		return false;
	});
	
	//Funcion para slide responsive con transicion
	$(".slider").responsiveSlides({
	  auto: true,
	  speed: 1000,
	  timeout: 6000,
	  pause: false,
	  namespace: "slide"
	});

	//Funcion para slide novedades
  	$("#owl-carousel").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      lazyLoad : true,
      rewindSpeed: 1500,
      stopOnHover: true,
      items : 4,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,2]
 
  	});

	//FANCYBOX GALLERY
	$(".fancybox").fancybox({
		openEffect: "none",
		closeEffect: "none"
	});

	//Funciones para efecto hover en distintas imagenes
	$('.thumbnail').hover(
	      function(){              
	          $(this).find('.caption').fadeIn(250)    //.slideDown(250); 
	      },
	      function(){
	          $(this).find('.caption').fadeOut(205)    //.slideUp(250); 
	      }
	  ); 
	  $('.zoom').hover(
	      function(){              
	          $(this).find('.zoom-caption').fadeIn(250)    //.slideDown(250); 
	      },
	      function(){
	          $(this).find('.zoom-caption').fadeOut(205)    //.slideUp(250); 
	      }
	); 

	//Funcion que carga al cambiar el id_provincia
        $("#id_provincia").change(function(){
            //Funcion GET como primer parametro recibe el url que queremos ejecutar.
            $.get(""+baseurl+"/buscar/distrito", 
            //Segundo parametro le mandamos una variable que enviaremos al controlador que es el id de la provincia seleccionada.
            { provincia: $(this).val() }, 
        	function(data){
                //Declaramos variables con los atributos de los campos que vamos a modificar, en este caso los select.
				var campo = $('#id_distrito');
				var campo1 = $('#id_corregimiento');
                //Vaciamos los select
                campo.empty();
				campo1.empty();
                //Llenamos los select con la primerra opcion cada uno respectivamente.
                campo.append("<option value='0'>Seleccione Distrito</option>");
                campo1.append("<option value='0'>Seleccione Corregimiento</option>");
				//Funcion each es un ciclo que recorre todo los elementos recibidos por el controlador.
                $.each(data, function(index,element) {
                    //Llenamos el select con los option a partir de los valores recibidos.
					campo.append("<option value='"+ element.id_distrito +"'>" + element.distrito + "</option>");
        		});
        	});
        });     
        //Funcion que percibe cuando se cambia un distrito para poder cargar los corregimientos pertenecientes a ese distrito
     	$("#id_distrito").change(function(){
            $.get(""+baseurl+"/buscar/corregimiento", 
            { distrito: $(this).val() }, 
        	function(data){
                var campo = $('#id_corregimiento');
                campo.empty();
                campo.append("<option value='0'>Seleccione Corregimiento</option>");				
                $.each(data, function(index,element) {
					campo.append("<option value='"+ element.id_corregimiento +"'>" + element.corregimiento + "</option>");
        		});
        	});
        });  
	
});	
