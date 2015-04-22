// JavaScript Document

$(document).ready(function(){
	fn_buscar();
	$("#grilla tbody tr").mouseover(function(){
		$(this).addClass("over");
	}).mouseout(function(){
		$(this).removeClass("over");
	});
});

function fn_cerrar(){
	$.unblockUI({ 
		onUnblock: function(){
			$("#div_oculto").html("");
		}
	}); 
};

function fn_mostrar_frm_agregar(){ 
	$("#div_oculto").load("ajax_form_agregar.php", function(){
		$.blockUI({
			message: $('#div_oculto'),
			css:{
				top: '50px',
                left: '50%',
                'margin-left': '-300px'
			}
		}); 
	});
};

function fn_ver(id){
	$("#div_oculto").load("ajax_ver.php", {id: id}, function(){
		$.blockUI({
			message: $('#div_oculto'),
			css:{
				top: '100px',
                left: '50%',
                'margin-left': '-300px'
			}
		});
	});
};


function fn_mostrar_frm_modificar(id){
	$("#div_oculto").load("ajax_form_modificar.php", {id: id}, function(){
		$.blockUI({
			message: $('#div_oculto'),
			css:{
				top: '50px',
                left: '50%',
                'margin-left': '-300px'
			}
		}); 
	});
};

function fn_paginar(var_div, url){
	var div = $("#" + var_div);
	$(div).load(url);
	/*
	div.fadeOut("fast", function(){
		$(div).load(url, function(){
			$(div).fadeIn("fast");
		});
	});
	*/
}

function fn_eliminar(id){
	$("#div_oculto").load("alert.php", {id: id, msj:'Quiere Eliminar al Administrativo?',metodo:'fn_borra',close:'fn_cerrar();'}, function(){
		$.blockUI({
			message: $('#div_oculto'),
			css:{
				top: '40%',
                left: '50%',
                'margin-left': '-150px'
			}
		});
	});
};

function fn_borra(id){
	//var respuesta = confirm("Desea eliminar al Adminitrativo?");
	//if (respuesta){
		$.ajax({
			url: 'ajax_eliminar.php',
			data: 'id=' + id,
			type: 'post',
			success: function(data){
				if(data!="")
					alert(data);
				fn_buscar()
                fn_cerrar();
			}
		});
   //	}
}

function fn_uploader(id,param){ //alert(param);
	var button = $('#upload'+id), interval;
	new AjaxUpload('#upload'+id, {
        action: 'ajax_upload.php?id='+ id,
		onSubmit : function(file , ext){
		if (! (ext && /^(jpg|png|jpeg|gif)$/.test(ext))){
			// extensiones permitidas
			alert('Error: Solo se permiten imagenes');
			// cancela upload
			return false;
		} else {
			/*button.text('Uploading');*/
			this.disable();
		}
		},
		onComplete: function(file, response){
			//button.text('Upload');
			// enable upload button
			this.enable();
            fn_buscar()
			// Agrega archivo a la lista
			//$('#lista').appendTo('.files').text(file);
		}
	});
};

function fn_buscar(){
	var str = $("#frm_buscar").serialize();
	$.ajax({
		url: 'ajax_listar.php',
		type: 'get',
		data: str,
		success: function(data){
			$("#div_listar").html(data);
		}
	});
}

