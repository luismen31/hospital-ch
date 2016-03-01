$(document).ready(function(){			
	
	//Cuando da click al elemento que tenga la clase 'dropdown-toggle'
	// debe acceder al nodo padre del siguiente elemento.	 	
	$('.dropdown-toggle').click(function(e){
	 	e.preventDefault();
	 	var nextNode = $(this).parent();

	 	//Si tiene la clase activado, remueve dicha clase y oculta los enlaces
	 	if($(nextNode).hasClass('activado')){
			$(nextNode).removeClass('activado');
			$(nextNode).children('ul').slideUp();
		}else{
			//sino oculta el enlace anteriormente abierto
			$('.menu ul li ul').slideUp();
			//remueve dicha clase
			$('.menu ul li').removeClass('activado');
			//agrega la clase al que se selecciona
			$(nextNode).addClass('activado');
			//muestra los elementos que se le dio click
			$(nextNode).children('ul').slideDown();
		}
	});	

	
	//Funcion que permite ocultar los enlaces al cambiar de tamaño del dispositivo
	$(window).resize(function(){
		if($(document).width() < 1100){
			// $('nav').css({'left':'-100%'});
			$('.menu ul li ul').slideUp('fast');
			$('.menu ul li').removeClass('activado');
		}
	});
});

//Cuando este listo el documento carga la funcion para el menu
$(document).ready(menu);
//Verifica el estado del slide.
var contador = 1;
	 
function menu () {
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