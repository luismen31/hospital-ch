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
	
});	
