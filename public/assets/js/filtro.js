(function(){
    'use strict';
	var $ = jQuery;
	$.fn.extend({
		filterTable: function(){
			return this.each(function(){
				$(this).on('keyup', function(e){
					$('.filterTable_no_results').remove();
					var $this = $(this), search = $this.val().toLowerCase(), target = $this.attr('data-filters'), $target = $(target), $rows = $target.find('tbody tr');
					if(search == '') {
						$rows.show(); 
					} else {
						$rows.each(function(){
							var $this = $(this);
							$this.text().toLowerCase().indexOf(search) === -1 ? $this.hide() : $this.show();
						})
						if($target.find('tbody tr:visible').size() === 0) {
							var col_count = $target.find('tr')[0].cells.length;
							var no_results = $('<tr class="filterTable_no_results default"><td colspan="'+col_count+'"  style="color:red;text-align:center;">No se encuentran Datos.</td></tr>');
							$target.find('tbody').append(no_results);
						}
					}
				});
			});
		}
	});
	$('[data-action="filter"]').filterTable();
})(jQuery);

$(function(){
    // attach table filter plugin to inputs
	$('[data-action="filter"]').filterTable();
	
	$('.container').on('click', '.panel-heading span.filter', function(e){
		var $this = $(this), 
				$panel = $this.parents('.panel');
		
		$panel.find('.panel-body').slideToggle();
		if($this.css('display') != 'block') {
			$panel.find('.panel-body').show();
		}
	});
	$('[data-toggle="tooltip"]').tooltip();
});

jQuery(document).ready(function ($) {        
  $('#scrollbar').perfectScrollbar();
  $('#scrollbar2').perfectScrollbar();
  $('#scrollbar3').perfectScrollbar();
  $('#scrollbar4').perfectScrollbar();
});

$('tr.default').click(function(){
	var host = window.location.host; 
	$.post('http://'+host+'/hospital-ch/public/getMedico',
		{ medico : $(this).data('id')},
		function(data){
			$('.modal-title').html(data.fullname);
			$('#especialidad').html(data.especialidad);
			$('#ubicacion').html(data.ubicacion);
			$('#extension').html(data.extension);
			$('#telefono').html(data.telefono);
			$('#observaciones').html(data.observacion);
			//mostrar modal
			$('#showMedico').modal('show');			
		}, 'json');
});

$(function(){
	$('.tooltipMedico').tooltip({
		placement: 'top',
		title: 'Ver Más'
	});
});