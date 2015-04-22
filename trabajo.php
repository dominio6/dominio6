<?
	include "extras/php/conexion.php";
?>


	<link rel="stylesheet" href="jqtransformplugin/jqtransform.css" type="text/css" media="all" />
        	<script type="text/javascript" src="jqtransformplugin/jquery.jqtransform.js" ></script>
	<script language="javascript">
		$(function(){
			$('#cmaForm').jqTransform({imgPath:'jqtransformplugin/img/'});
		});
	</script>

    <script type="text/javascript" src="calendar.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/jquery.maskedinput-1.0.js"></script>
<script type="text/javascript" src="js/ui.core.js"></script>
<script type="text/javascript" src="js/ui.accordion.js"></script>

<script type="text/javascript">
$(document).ready(function(){

	    $("#recordClientPhone").mask("(999) 999-9999");
	$("#recordClientPhoneAlt").mask("(999) 999-9999");
    	$("#recordClientPhoneP").mask("(999) 999-9999");
	$("#recordClientPhoneAltP").mask("(999) 999-9999");
    	$("#recordClientPhoneM").mask("(999) 999-9999");
	$("#recordClientPhoneAltM").mask("(999) 999-9999");
	$("#recordClientZip").mask("99999");
	$("#recordPropertyZip").mask("99999");
	$("#alt").mask("9.99");
	$("#curp").mask("aaaa999999aaaaaa99");

	// add * to required field labels
	$('label.required').append('&nbsp;<strong style=\'color:#CC0000;\'>*</strong>&nbsp;');

	// accordion functions
	var accordion = $("#stepForm").accordion();
	var current = 0;

	$.validator.addMethod("pageRequired", function(value, element) {
		var $element = $(element)
		function match(index) {
			return current == index && $(element).parents("#sf" + (index + 1)).length;
		}
		if (match(0) || match(1) || match(2)|| match(3)|| match(4)|| match(5)) {
			return !this.optional(element);
		}
		return "dependency-mismatch";
	}, $.validator.messages.required)

 var v = $("#cmaForm").validate({
		errorClass: "warning",
		onkeyup: false,
		onblur: false,
/*		submitHandler: function() {
			alert("Submitted, thanks!");
		}*/
	});

	// back buttons do not need to run validation
	$("#sf2 .prevbutton").click(function(){
		accordion.accordion("activate", 0);
		current = 0;
	});
	$("#sf3 .prevbutton").click(function(){
		accordion.accordion("activate", 1);
		current = 1;
	});
	$("#sf4 .prevbutton").click(function(){
		accordion.accordion("activate", 2);
		current = 2;
	});
	$("#sf5 .prevbutton").click(function(){
		accordion.accordion("activate", 3);
		current = 3;
	});
	$("#sf6 .prevbutton").click(function(){
		accordion.accordion("activate", 4);
		current = 4;
	});
	// these buttons all run the validation, overridden by specific targets above
	$(".open5").click(function() {
	  if (v.form()) {
	    accordion.accordion("activate", 5);
	    current = 5;
	  }
	});
	$(".open4").click(function() {
	  if (v.form()) {
	    accordion.accordion("activate", 4);
	    current = 4;
	  }
	});
	$(".open3").click(function() {
	  if (v.form()) {
	    accordion.accordion("activate", 3);
	    current = 3;
	  }
	});
	$(".open2").click(function() {
	  if (v.form()) {
	    accordion.accordion("activate", 2);
	    current = 2;
	  }
	});
	$(".open1").click(function() {
	  if (v.form()) {
	    accordion.accordion("activate", 1);
	    current = 1;
	  }
	});
	$(".open0").click(function() {
	  if (v.form()) {
	    accordion.accordion("activate", 0);
	    current = 0;
	  }
	});

});
</script>






<link rel="stylesheet" type="text/css" href="view.css" media="all">
<link rel="stylesheet" type="text/css" href="boton.css" />
<script>
function licen(){  //alert("..."+document.getElementById("lic").checked );

object = document.getElementById('submit');
if(document.getElementById("lic").checked == true){ //alert('activado');
document.getElementById('check').innerHTML = "";
object.setAttribute('type', 'submit');
}else{         //alert('desactivado');
document.getElementById('check').innerHTML = "Debe aceptar las ondiciones";
object.setAttribute('type', 'button');}

}

function selector2(dato){  //alert("..."+dato);
document.getElementById("d1").style.display = (dato == "1") ? "block" : "none";
document.getElementById("d2").style.display = (dato == "2") ? "block" : "none";
document.getElementById("d3").style.display = (dato == "3") ? "block" : "none";
if(dato == "1"){document.getElementById(dato+"1").checked = true; }
if(dato == "2"){document.getElementById(dato+"1").checked = true; }
if(dato == "3"){document.getElementById(dato+"1").checked = true; }
//document.getElementById(dato+"1").checked = false;
//document.getElementById(dato+"2").checked = false;
}
function suprimir(dato){
document.getElementById("mama0").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama11").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama12").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama13").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama21").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama22").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama23").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama31").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama32").style.display = (dato == "Viudo") ? "none" : "block";
document.getElementById("mama33").style.display = (dato == "Viudo") ? "none" : "block";
 }

function addinputd(dato){
document.getElementById("inputd").style.display = (dato == "Otro") ? "block" : "none";
 }
 function addinputp(dato){
document.getElementById("inputp").style.display = (dato == "Otro") ? "block" : "none";
 }
 function addinputr(dato){
document.getElementById("inputr").style.display = (dato == "Otro") ? "block" : "none";
 }

function edad(dia,mes,ano){
     //var fecha= (dia+"/"+mes+"/"+ano);                          //
    //calculo la fecha de hoy
hoy=new Date();

if ((mes == (hoy.getMonth() + 1) ) && ( (hoy.getUTCDate() - 1) - dia  >= 0) ) {
ano=(ano - 1); }

//si el mes es superior al actual tampoco habrá cumplido años, por eso le quitamos un año al actual
if (mes < (hoy.getMonth() + 1)) {
ano=(ano - 1);}

//ya no habría mas condiciones, ahora simplemente restamos los años y mostramos el resultado como su edad
var edad=((hoy.getFullYear() - ano - 1));
 document.getElementById("edad").value= edad;}
</script>









			<h2>Empleo Personal Doicente Y Administrativo</h2>


<form id="cmaForm" name="cmaForm" class="appnitro" enctype="multipart/form-data" method="post" action="solicitud.php">
<input type="hidden" name="action" id="" value="enviar" />

<ul id="stepForm" class="ui-accordion-container">
	<li id="sf1"><a href='#' class="ui-accordion-link"> </a>
	<div>
<fieldset><legend>Datos Generales</legend>

<table border="0" cellspacing="5" width="100%">
<tr><td colspan="2">		<label class="input required description" for="archivo">Sube tu Fotografia </label><br /><br />
		<div>
			<input id="archivo" name="archivo" class="inputclass pageRequired" accept="gif|jpg|png|bmp|jpeg" type="file" title="Debe subir su fotografia."/>
		</div></td></tr>
        <tr><td colspan="2"><hr /></td></tr>
</table>
	<div class="buttonWrapper"><a  name="formNext1" class="button chico azul open1 nextbutton" />Siguiente</a></div>
</fieldset>
	</div>
	</li>
	<li id="sf2">
	<a href='#' class="ui-accordion-link">
	</a>
	<div>
<fieldset>

<legend>Datos Personales</legend>

<table border="0" cellspacing="5" width="100%">
<tr><td>    <label class="input required description" for="name">Nombre </label><br /><br />
			<input id="name" name= "name" class="inputclass pageRequired" title="Cual es tu Nombre?" maxlength="20"  value=""/>
		</td><td>
			<label class="input required description" for="apep">Apellido Paterno</label><br /><br />
			<input id="apep" name= "apep" class="inputclass pageRequired" title="Cual es tu 1er Apellido?" maxlength="20" size="14" value=""/>
		</td><td>
			<label class="input required description" for="apem">Apellido Materno</label><br /><br />
			<input id="apem" name= "apem" class="inputclass pageRequired" title="Cual es tu 2do Apellido?" maxlength="20" size="14" value=""/>
		</td></tr>

<tr>
<td title="Especifica tu Genero">
<label class="description">Sexo </label><br /><br />
<input id="sexh" name="sexo" class="radio" type="radio" checked="checked" value="H" />
<label class="choice" for="sexh">Masculino</label>
<input id="sexm" name="sexo" class="radio" type="radio" value="M" />
<label class="choice" for="sexm">Femenino</label>
</td>
<td colspan="2">
<label class="description" for="curp">Curp </label><br /><br />
			<input id="curp" name="curp" class="inputclass" title="Introdce tu Clave Única de Registro de Población" type="text" maxlength="18" value=""/>
</td>

</tr>
<tr>
<td>		<label class="input required description" for="element_7">Fecha de Nacimiento </label><br /><br />
        <span>
			<input id="element_7_2" name="dia" class="digits pageRequired" size="2" maxlength="2" value="" type="text" title="Introdce el Dia">
			<label for="element_7_2">DD</label>
		</span>
        <span>
			<input id="element_7_1" name="mes" class="digits pageRequired" size="2" maxlength="2" value="" type="text" title="Introdce el Mes">
			<label for="element_7_1">MM</label>
		</span>
		<span>
	 		<input id="ano" name="ano" class="digits pageRequired" size="4" maxlength="4" value="" type="text" title="Introdce el Año">
			<label for="ano" >YYYY</label>
		</span>

		<span id="calendar">
			<img id="cal_img" class="datepicker" src="calendar.gif" title="Abrir Calendario" >
		</span>
		<script type="text/javascript">
			Calendar.setup({
			inputField	 : "ano",
			baseField    : "element_7",
			displayArea  : "calendar",
			button		 : "cal_img",
			ifFormat	 : "%B %e, %Y",
			onSelect	 : selectDate
			});
		</script></td>

<td title="Mueve el raton hasta ver tu edad" onmouseover="edad(document.getElementById('element_7_2').value,document.getElementById('element_7_1').value,document.getElementById('ano').value)">
		 <label class="description" for="edad">Edad</label><br /><br />
         <input id="edad" name="edad" class="inputclass" type="text" disabled="disabled" />
		</td>
<td>		<label class="description" for="lugar">Lugar de Nacimeinto </label><br /><br />
		<div>
			<input id="lugar" name="lugar" class="inputclass" type="text" maxlength="100" value="" title="Escribe el nombre del Lugar"/>
		</div></td>
</tr>

<tr><td colspan="3"><hr /></td></tr>
</table>
	<div class="buttonWrapper">
    <a name="formBack0" class="button chico azul open0 prevbutton"/>Anterior</a>
    <a name="formNext2" class="button chico azul open2 nextbutton"/>Siguiente</a>
    </div>

</fieldset>
<!--  -->
	</div>
	</li>
	<li id="sf3">
	<a href='#' class="ui-accordion-link">
	</a>
	<div>
<fieldset>

<legend>Localizacion</legend>

<table border="0" cellspacing="5" width="100%">
<tr><td colspan="3"><label class="input required description" for="element_6">Domcilio </label><br /><hr /></td></tr>


<tr>
<td>		<div>
			<input id="calle" name="calle" class="inputclass pageRequired" value="" type="text"><br /><br />
			<label for="calle">Calle</label>
		</div></td>
<td>		<div>
			<input id="num" name="num" class="digits pageRequired" value="" type="text" maxlength="6"><br /><br />
			<label for="num">Numero</label>
		</div></td>
<td>		<div class="left">
			<input id="colonia" name="colonia" class="inputclass" value="" type="text"><br /><br />
			<label for="colonia">Colonia</label>
		</div></td>
</tr>

<tr>
<td>
            <select class="fill" id="estado" name="edo"  onchange="cambia(document.cmaForm.mpo,'cmaForm')"><? if(!empty($_POST['edo']) and $_POST['edo']!="-- Seleccione el Estado --"){ ?>
                  <option value="<? echo $_POST['edo']; ?>" selected="selected"><? echo $_POST['edo']; ?></option>  <? } ?>
                  <option value="-- Seleccione el Estado --">-- Seleccione el Estado --</option>
                  <option value="Aguascalientes">Aguascalientes</option>
                  <option value="Baja California">Baja California </option>
                  <option value="Baja California Sur">Baja California Sur </option>
                  <option value="Campeche">Campeche </option>
                  <option value="Chiapas">Chiapas </option>
                  <option value="Chihuahua">Chihuahua </option>
                  <option value="Coahuila">Coahuila </option>
                  <option value="Colima">Colima </option>
                  <option value="Distrito Federal">Distrito Federal</option>
                  <option value="Durango">Durango </option>
                  <option value="Estado de México">Estado de México </option>
                  <option value="Guanajuato">Guanajuato </option>
                  <option value="Guerrero">Guerrero </option>
                  <option value="Hidalgo">Hidalgo </option>
                  <option value="Jalisco" selected="selected">Jalisco </option>
                  <option value="Michoacán">Michoacán </option>
                  <option value="Morelos">Morelos </option>
                  <option value="Nayarit">Nayarit </option>
                  <option value="Nuevo León">Nuevo León </option>
                  <option value="Oaxaca">Oaxaca </option>
                  <option value="Puebla">Puebla </option>
                  <option value="Querétaro">Querétaro </option>
                  <option value="Quintana Roo">Quintana Roo </option>
                  <option value="San Luis Potosí">San Luis Potosí </option>
                  <option value="Sinaloa">Sinaloa </option>
                  <option value="Sonora">Sonora </option>
                  <option value="Tabasco">Tabasco </option>
                  <option value="Tamaulipas">Tamaulipas </option>
                  <option value="Tlaxcala">Tlaxcala </option>
                  <option value="Veracruz">Veracruz </option>
                  <option value="Yucatán">Yucatán </option>
                  <option value="Zacatecas">Zacatecas</option>
              </select>  <br /><br />
			<label for="estado">Estado</label>
		</td>
<td>
            <select class="fill" id="municipio" name="mpo"><? if(!empty($_POST['mpo']) and $_POST['mpo']!="-- Seleccione la Cd --"){ ?>
                  <option value="<? echo $_POST['mpo']; ?>" selected="selected"><? echo $_POST['mpo']; ?></option> <? } ?>
                  <option value="-- Seleccione la Cd --">-- Seleccione la Cd --</option>
              </select><br /><br />
		<label for="municipio">Municipio</label>
	</td>
<td>		<div class="left">
            <input name="zip" id="recordClientZip" class="inputclass" maxlength="12" title="Proporcione su Codigo Postal" /><br /><br />
			<label for="zip">Codigo Postal</label>
		</div></td>

</tr>
<tr>
<td>		<label class="input required description" for="recordClientPhone">Telefono </label><br /><br />
		<span>
        <input name="tel" id="recordClientPhone" class="inputclass pageRequired" maxlength="15" title="Introduzca su Numero telefonico" />
		</span>
</td>
<td>		<label class="description" for="recordClientPhoneAlt">Celular </label><br /><br />
		<span>
        <input name="cel" id="recordClientPhoneAlt" class="inputclass" maxlength="15" title="Numero de celular Opcional" />
		</span>
</td>
<td>		<label class="input required description" for="element_10">Email </label> <br /> <br />
		<div>                                                                     <!--email-->
         <input name="email" id="recordClientEmail" class="inputclass pageRequired " maxlength="40" value="@" title="Es Necesario su E-mail" />
		</div></td>
</tr>
<tr><td colspan="3"><hr /></td></tr>
</table>
	<div class="buttonWrapper">
    <a name="formBack1" class="button chico azul open1 prevbutton"/>Anterior</a>
    <a name="formNext3" class="button chico azul open3 nextbutton"/>Siguiente</a>
    </div>

</fieldset>

<!--  -->
	</div>
	</li>
	<li id="sf4">
	<a href='#' class="ui-accordion-link">
	</a>
	<div>
<fieldset>
			<legend>Datos Escolares</legend>

<table border="0" cellspacing="5" width="100%">
  <tr>
    <td>		<label class="description" for="secant">Carrera o Especialidad </label>
		<div>
			<input id="secant" name="secant" class="element text medium" type="text" maxlength="255" value=""/>
		</div></td>

    <td>		<label class="description" for="seccd">Ocupacion actual </label>
		<div>
			<input id="seccd" name="seccd" class="element text medium" type="text" maxlength="40" value=""/>
		</div></td>
  </tr>

  <tr>
    <td colspan="3">		<label class="description" for="insti">¿MENCIONA LA EXPERIENCIA CON QUE CUENTAS? </label><br /><br />
		<div>
			<textarea id="insti" name="insti"  cols="80" rows="3"></textarea>

        </div></td>

  </tr>
<tr><td colspan="3"><hr /></td></tr>
</table>
	<div class="buttonWrapper">
    <a name="formBack2" class="button chico azul open2 prevbutton"/>Anterior</a>
    <a name="formNext4" class="button chico azul open4 nextbutton"/>Siguiente</a>
    </div>
</fieldset>
	</div>
	</li>

	<li id="sf6">
	<a href='#' class="ui-accordion-link">
	</a>
	<div>
<fieldset>
			<legend>Conocimiento</legend>
<table border="0" cellspacing="10" width="100%"><tr><td>

		<label class="description" for="alt">Estatura </label><br /><br />
		<div>
			<input id="alt" name="alt" class="inputclass pageRequired" type="text" maxlength="4" value=""/>
		</div>
</td>
 </tr><tr><td valign="top">
		<label class="description" for="ts">Escolaridad</label><br /><br />
		<div>
		<select  id="escolar" name="escolar" >
<option value="Primaria" >Primaria</option>
<option value="Secuandaria">Secuandaria</option>
<option value="Bachillerato">Bachillerato</option>
<option value="Diplomado">Diplomado</option>
<option value="Profesional">Profesional</option>
<option value="Maestria">Maestria</option>
<option value="Doctorado">Doctorado</option>
		</select>
		</div>
</td><td colspan="2">
		<label class="input required description" for="nota">Comenta en resumen la experiencia profesional con que cuentas </label><br /><br />

			<textarea cols="50" rows="5" id="nota" name="nota" class="inputclass pageRequired"></textarea>

</td></tr><tr><td colspan="3" align="right">
                <label class="input required description" >Acepta los <a class="linkpag" href="javascript: fn_open();" title="Leer las Politicas">Terminos y Politicas</a> de CMAM?</label>
                <input type="checkbox" name="lic" value="si" id="lic" onclick="licen()"/>
                <label id="check" for="lic" class="warnning"></label>
			    <!--<input type="hidden" name="form_id" value="375852" /> -->

</td>  </tr>
<tr><td colspan="3"><hr /></td></tr>
</table>
	<div class="buttonWrapper" >
    <a name="formBack3" class="button chico azul open4 prevbutton"/>Anterior</a>
    <button type="button" name="submit" id="submit" class="button chico amarillo submitbutton"  style="float:right; height:31px;"onclick="licen()">Enviar</button>
   <!-- <input name="submit" type="submit" id="submit" value="Enviar" class="submitbutton" alt="Submit" title="Submit">-->
    </div>
</fieldset>
	</div>
	</li>
</ul>
</form>

