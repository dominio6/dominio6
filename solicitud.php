<? if($_GET['mode']=="exit"){session_start();$_SESSION['access']="no";session_destroy(); }else{session_start();}  ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<? include("keyaccess.php");include("libreria.php"); ?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="icon.png" type="image/x-icon" rel="shortcut icon" />
<title>CMAM</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="municipios.js" charset="ISO-8859-1"></script>
 <script src="lib/jquery.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="stylesheets/thumbnailviewer.css" type="text/css" />
<script src="lib/thumbnailviewer.js" type="text/javascript"></script>
<script type="text/javascript" src="lib/jquery.timers.js"></script>
<script type="text/javascript" src="lib/jquery.dropshadow.js"></script>
<script type="text/javascript" src="lib/mbTooltip.js"></script>
        <script language="javascript" type="text/javascript" src="extras/js/jquery.blockUI.js"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/mbTooltip.css" title="style1"  media="screen">

<script>
  $(function(){
    $("[title]").mbTooltip({ // also $([domElement]).mbTooltip  >>  in this case only children element are involved
      opacity : .95,       //opacity
      wait:100,           //before show
      cssClass:"default",  // default = default
      timePerWord:70,      //time to show in milliseconds per word
      hasArrow:false,			// if you whant a little arrow on the corner
      hasShadow:true,
      imgPath:"images/",
      ancor:"mouse", //"parent"  you can ancor the tooltip to the mouse position or at the bottom of the element
      shadowColor:"black", //the color of the shadow
      mb_fade:400 //the time to fade-in
    });
  });

  //-.......................
  function fn_open(){
	$("#div_ocultolic").load("ajax_lic.php", function(){
		$.blockUI({
			message: $('#div_ocultolic'),
			css:{
				top: '100px',
                left: '50%',
                'margin-left': '-400px'
			}
		});
	});
};
function fn_close(){
	$.unblockUI({
		onUnblock: function(){
			$("#div_ocultolic").html("");
		}
	});
};
</script>
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
		submitHandler: function() {
		submit();//	alert("Submitted, thanks!");
		}
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

<!--<link rel="stylesheet" type="text/css" media="screen" href="style.css" />-->

<link rel="stylesheet" href="stylesheets/styles.css" type="text/css" />
    <!--[if IE]>
        <link rel="stylesheet" href="stylesheets/ie.css" type="text/css" media="screen" />
    <![endif]-->





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

function selector2(dato){ // alert("..."+dato);
document.getElementById("Secundaria").style.display = (dato == "Secundaria") ? "block" : "none";
document.getElementById("Bachillerato").style.display = (dato == "Bachillerato") ? "block" : "none";


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






</head>
<body>
<div id="div_ocultolic" style="display: none; width:800px; "></div>


<div id="midiv">



<div class="logo" >
    <div class="shield">
      <center>COLEGIO MILITARIZADO<br />"AGUILAS DE MEXICO"<br /><br />
      <span style="font-size:15px; color:white;">Constitución No. 434 - Col. Centro - Cd. Guzmán, Jal. - Tel 01 (341) 413-32-08</span>
      </center>
    </div>
</div>



<div id="divtxt">

<?include("menublue.php"); ?>


<center>
 <?php
echo "<div >";
?>



<div style="display:table; width:100%; border-spacing:15px; background:#EDEDED; " >

    <div id="main">
        <div id="header">
			<h2>Solicitud de Inscripcion para Aspirantes</h2>
        </div>


<?     //inserto si es que paso la validacion
$fila=mysql_query("SELECT folio FROM solicitud WHERE folio='$_POST[folio]'",$link);
    if($_POST['action'] == "enviar" and mysql_num_rows($fila) == 0){

//mysql_select_db($basedd,$link);
// se cuenta el numero de filas que dio como
// resultado la consulta y se bifurca
$fecha=Date("Y-m-d"); $fechan="$_POST[ano]/$_POST[mes]/$_POST[dia]";
if($_POST['deporte']=="Otro"){$deporte=$_POST['inputd'];}else{$deporte=$_POST['deporte'];}
if($_POST['pasatiempo']=="Otro"){$pasatiempo=$_POST['inputp'];}else{$pasatiempo=$_POST['pasatiempo'];}
if($_POST['religion']=="Otro"){$religion=$_POST['inputr'];}else{$religion=$_POST['religion'];}
     if($_POST['lvl']=='Bachillerato'){$lvl=$_POST['nivel'];
     }else{$lvl=$_POST['grado'];}
	
	 $sql3= "select * from ciclos where categoria='".$_POST['lvl']."' and estado='V'";
	 $datos = mysql_query($sql3);
	 $valores=mysql_fetch_array($datos);
	 	 
	 
	 
	$sql = "INSERT INTO users (grado,categoria,estado,cuenta, fecha, foto, sex, nombre, apep, apem, email, telefono, direccion, nivel, nick, pass)
                        VALUES ('$valores[id]','$_POST[lvl]','Pendiente','Alumno','$fecha', '$destino','$_POST[sexo]', '".strtoupper($_POST['name'])."', '".strtoupper($_POST['apep'])."', '".strtoupper($_POST['apem'])."', '".strtolower($_POST['email'])."', '$_POST[tel]', '".strtoupper($_POST['calle'])."', $lvl,'none','none')";



if(@mysql_query($sql,$link)){
$numid=mysql_insert_id();
mkdir("users/$numid");

	// obtenemos los datos del archivo
	$tamano = $_FILES["archivo"]['size'];// echo $_POST["action"].$tamano;
    // if($tamano==0){ $_FILES["archivo"]="unk.jpg";}
	$tipo = $_FILES["archivo"]['type'];
   // echo $_FILES["archivo"]['type'];
    $archivo = strtr($_FILES['archivo']['name'], "Ññ'ÁÉÍÓÚÀÈÌÒÙáéíóúäëïöüàèìòù ", "Nn-AEIOUAEIOUaeiouaeiouaeiou_");
	$prefijo = substr(md5(uniqid(rand())),0,6);

	if ($archivo != "") {
		// guardamos el archivo a la carpeta files
		$destino =  "users/$numid/".$prefijo."_".$archivo;
		if (copy($_FILES['archivo']['tmp_name'],$destino)) {
			$status = "Archivo subido: <b>".$archivo."</b>";
		} else {
			$status = "Error al subir el archivo";
		}
	} else {
		$status = "Error al subir archivo";
        $destino =  "users/alum".$_POST['sexo'].".png";
	}
    //____________________________________________
$sql = "UPDATE users SET  foto='$destino' where id=$numid";
	mysql_query($sql);

   $sql="INSERT INTO solicitud (id_alum, pass2, modalidad, curp, fechan, lugar, deporte, pasatiempo, religion, num, col, edo, mpo, zip, cel, secant,sectipo, seccd, secper, secpro, leng, nadar, matmas, matmen, insti, nohrmo, nohrma, civil,nombrep, edadp, nacip, domp, oficiop, emprep, telp, celp, emailp, nombrem, edadm, nacim, domm, oficiom, emprem, telm, celm, emailm, estatura, peso, tallapan, tallacam, calzado, gorra, sangre, motivo, folio)
   VALUES ('$numid','TUTOR".randomText(5)."', '$_POST[moda]','$_POST[curp]','$fechan','$_POST[lugar]','$deporte','$pasatiempo','$religion','$_POST[num]','$_POST[colonia]','$_POST[edo]','$_POST[mpo]','$_POST[zip]','$_POST[cel]','$_POST[secant]','$_POST[sectipo]','$_POST[seccd]','$_POST[secper]','$_POST[secpro]','$_POST[leng]','$_POST[nadar]','$_POST[matmas]','$_POST[matmen]','$_POST[insti]','$_POST[nohrmo]','$_POST[nohrma]','$_POST[civil]','$_POST[namep]','$_POST[edadp]','$_POST[nacp]','$_POST[domp]','$_POST[prop]','$_POST[emprep]','$_POST[telp]','$_POST[celp]','$_POST[emailp]','$_POST[namem]','$_POST[edadm]','$_POST[nacm]','$_POST[domm]','$_POST[prom]','$_POST[emprem]','$_POST[telm]','$_POST[celm]','$_POST[emailm]','$_POST[alt]','$_POST[peso]','$_POST[tpan]','$_POST[tcam]','$_POST[ncal]','$_POST[ngor]','$_POST[ts]','$_POST[nota]','$_POST[folio]')";
if(@mysql_query($sql,$link)){
     		// $_SESSION['ya']=true; mkdir("users/". mysql_insert_id());
?>
<fieldset><legend>Solicitud Completada!</legend><br />
      Gracias <span style="color:#669900;"><b><?=$_POST['name']; ?></b></span> por llenar su solicitud de aspirante al Colegio "AGUILAS DE MEXICO"<br />
      El numero de su ficha es: <span style="color:red;"><b><?=$_POST['folio']; ?></b></span> por favor anotelo, con este podra consultar su resultado<br /><br />
      Desde este momento podra ser contactado para darle informacion general al Telefono: <span style="color:#669900;"><b><?=$_POST['tel']; ?></b></span><br />
      <? if($row['email']!='@'){ ?>Y tambien se le notificara al correo: <span style="color:#669900;"><b><?=$row['email']; ?></b></span><? } ?><br /><hr />
	<div class="buttonWrapper"><a href="../index.htm" name="formNext1" class="button chico amarillo open1 nextbutton" />Salir</a></div>
</fieldset>
<?}else{echo "Lo sentimos, el usuario <b>".$_POST['folio']."</b> no pudo ser agregado, intentelo de nuevo ".mysql_error(); } }
				else{
                  ?>
<fieldset><legend>Error!</legend><br />
      Lo sentimos en este momento no se pudo atender la Solicitud, por favor intentelo mas tarde<br /> <hr />
	<div class="buttonWrapper"><a href="solicitud.php" name="formNext1" class="button chico amarillo open1 nextbutton" />Intentar Nuevamente</a></div>
</fieldset>
<?//
}





mysql_close($link);

}else{// $_SESSION['ya']=false;?>
<form id="cmaForm" name="cmaForm" class="appnitro" enctype="multipart/form-data" method="post" action="solicitud.php">
<input type="hidden" name="folio" id="" value="<?=randomText(8); ?>" />
<input type="hidden" name="action" id="" value="enviar" />

<ul id="stepForm" class="ui-accordion-container">
	<li id="sf1"><a href='#' class="ui-accordion-link"> </a>
	<div>
<fieldset><legend>Datos Generales</legend>

<table border="0" cellspacing="5" width="100%">
<tr>
<td>
<label class="description" for="selectlvl">Nivel </label><br /><br />

		<select name="lvl" id="selectlvl" class="inputclass pageRequired" title="Escoja el nivel de estudios" onchange="selector2(this.value)">
<option value="Secundaria">Secundaria</option>
<option value="Bachillerato" selected="selected">Bachillerato</option>

		</select>

</td><td title="Selecciona la Modalidad de su Preferencia"><label class="description" for="element_52">Modalidad </label><br /><br />
		<span>
<input id="element_52_1" name="moda" class="element radio" type="radio" checked="checked" value="Interno" />
<label class="choice" for="element_52_1">Interno</label>
<input id="element_52_2" name="moda" class="element radio" type="radio" value="Externo" />
<label class="choice" for="element_52_2">Externo</label>
<input id="element_52_3" name="moda" class="element radio" type="radio" value="Semi-Interno" />
<label class="choice" for="element_52_3">Semi-Interno</label>
</span></td>
</tr><tr>
<td >		<label class="input description" for="archivo">Sube tu Fotografia </label><br /><br />
		<div>
			<input id="archivo" name="archivo" class="inputclass" accept="gif|jpg|png|bmp|jpeg" type="file" title="Debe subir su fotografia."/>
		</div></td>
<td><div id="Secundaria" style="display: none">
 <label class="description" for="element_50">Año Solicitado </label><br /><br />
		<span>
<input id="element_50_1" name="anoe" class="element radio" type="radio" checked="checked" value="1"/>
<label class="choice" for="element_50_1">º1 Año</label>
<input id="element_50_2" name="anoe" class="element radio" type="radio" value="2"/>
<label class="choice" for="element_50_2">º2 Año</label>
<input id="element_50_3" name="anoe" class="element radio" type="radio" value="3"/>
<label class="choice" for="element_50_3">º3 Año</label>
		</span></div>
<div id="Bachillerato" style="display: block">
<label class="description" for="element_51">Semestre Solicitado </label><br /><br />
		<span>

<input id="11" name="grado" class="element radio" checked="checked" type="radio" value="1" />
<label class="choice" for="11">º1</label>
<input id="12" name="grado" class="element radio" type="radio" value="2" />
<label class="choice" for="12">º2</label>
<input id="21" name="grado" class="element radio" type="radio" value="3" />
<label class="choice" for="21">º3</label>
<input id="22" name="grado" class="element radio" type="radio" value="4" />
<label class="choice" for="22">º4</label>
<input id="31" name="grado" class="element radio" type="radio" value="5" />
<label class="choice" for="31">º5</label>
<input id="32" name="grado" class="element radio" type="radio" value="6" />
<label class="choice" for="32">º6</label>
		</span>  </div>
</td>
</tr>
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
<td>		<label class="description" for="lugar">Lugar de Nacimiento </label><br /><br />
		<div>
			<input id="lugar" name="lugar" class="inputclass" type="text" maxlength="100" value="" title="Escribe el nombre del Lugar"/>
		</div></td>
</tr>

<tr>
<td title="Selecciona tu deporte favorito o escribelo">		<label class="description" for="deporte">Deportes </label><br /><br />
		<div>
		<select class="inputclass pageRequired" id="deporte" name="deporte" onchange="addinputd(this.value)">
<option value="Ninguno" selected="selected">Ninguno</option>
<option value="Futball">Futball</option>
<option value="Basketball" >Basketball</option>
<option value="Boleyball" >Boleyball</option>
<option value="Otro" >Otro</option>

		</select>
		</div> </td>
<td title="Selecciona tu pasatiempo o escribelo">		<label class="description" for="pasatiempo">Pasatiempos </label><br /><br />
		<div>
		<select class="inputclass pageRequired" id="pasatiempo" name="pasatiempo" onchange="addinputp(this.value)">
<option value="Ninguno" selected="selected">Ninguno</option>
<option value="Natacion">Natacion</option>
<option value="Ciclismo" >Ciclismo</option>
<option value="Escalar" >Escalar</option>
<option value="Otro" >Otro</option>

		</select>
		</div> </td>
<td title="Selecciona la religion que practicas">		<label class="description" for="religion">Religion </label><br /><br />
		<div>
		<select class="inputclass pageRequired" id="religion" name="religion" onchange="addinputr(this.value)">
<option value="Ninguno" selected="selected">Ninguna</option>
<option value="Catolica"  >Catolica</option>
<option value="Cristiana" >Cristiana</option>
<option value="Budista" >Budista</option>
<option value="Ateo" >Ateo</option>
<option value="Otro" >Otra</option>

		</select>
		</div>	</td>
</tr>
<tr><td>	<div id="inputd" style="display:none;">
			<input id="element_10" name="deportealt" class="inputclass pageRequired" type="text" maxlength="40" value=""/>
		</div></td><td>	<div id="inputp" style="display:none;">
			<input id="element_10" name="pasatiempoalt" class="inputclass pageRequired" type="text" maxlength="40" value=""/>
		</div></td><td><div id="inputr" style="display:none;">
			<input id="element_10" name="religionalt" class="inputclass pageRequired" type="text" maxlength="40" value=""/>
		</div></td></tr>
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
			<label for="calle">Calle&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<input id="calle" name="calle" class="inputclass pageRequired" value="" type="text">
		</div></td>
<td>		<div>
			<label for="num">Numero&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<input id="num" name="num" class="digits pageRequired" value="" type="text" maxlength="6">
		</div></td>
<td>		<div class="left">
			<label for="colonia">Colonia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
			<input id="colonia" name="colonia" class="inputclass" value="" type="text">
		</div></td>
</tr>

<tr>
<td>
			<label for="estado">Estado</label>
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
		</td>
<td>
            <!--<select class="fill" id="municipio" name="mpo"><? if(!empty($_POST['mpo']) and $_POST['mpo']!="-- Seleccione la Cd --"){ ?>
                  <option value="<? echo $_POST['mpo']; ?>" selected="selected"><? echo $_POST['mpo']; ?></option> <? } ?>
                  <option value="-- Seleccione la Cd --">-- Seleccione la Cd --</option>
              </select>-->
		<label for="municipio">Municipio</label>
              			<input id="municipio" name="mpo" class="inputclass pageRequired" value="" type="text"><br /><br />
	</td>
<td>		<div class="left">
			<label for="zip">Codigo Postal</label>
            <input name="zip" id="recordClientZip" class="inputclass" maxlength="12" title="Proporcione su Codigo Postal" /><br /><br />
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
<td>		<label class="input description" for="element_10">Email </label> <br /> <br />
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
    <td>		<label class="description" for="secant">Secundaria donde estudia o lo hizo </label>
		<div>
			<input id="secant" name="secant" class="element text medium" type="text" maxlength="255" value=""/>
		</div></td>
    <td>		<label class="description" for="sectipo">Tipo de secuandaria </label>
		<div>
		<select class="element select medium" id="sectipo" name="sectipo">
<option value="Federal" selected="selected">Federal</option>
<option value="Estatal" >Estatal</option>
<option value="Privada" >Privada</option>

		</select>
		</div></td>
    <td>		<label class="description" for="seccd">Ciudad donde se ubica </label>
		<div>
			<input id="seccd" name="seccd" class="element text medium" type="text" maxlength="40" value=""/>
		</div></td>
  </tr>
  <tr>
    <td>		<label class="description" for="secper">Periodo </label><br />
		<div>
			<input id="secper" name="secper" class="element text medium" type="text" maxlength="100" value=""/>
		</div></td>
    <td>		<label class="description" for="secpro">Promedio de Calificaciones </label>
		<div>
			<input id="secpro" name="secpro" class="number" type="text" maxlength="6" value=""/>
		</div></td>
    <td>		<label class="description" for="leng">Idiomas que domina ademas del Español </label>
		<div>
			<input id="leng" name="leng" class="element text medium" type="text" maxlength="100" value=""/>
		</div></td>
  </tr>
  <tr>
    <td>		<label class="description" for="nadar">Sabe Nadar? </label><br />
		<div>
		<select class="element select medium" id="nadar" name="nadar">
			<option value="No" selected="selected">No</option>
<option value="Si" >Si</option>

		</select>
		</div></td>
    <td>		<label class="description" for="matmas">Materia que mas le gusta </label>
		<div>
			<input id="matmas" name="matmas" class="element text medium" type="text" maxlength="255" value=""/>
		</div></td>
    <td>		<label class="description" for="matmen">Materia que menos le gusta </label>
		<div>
			<input id="matmen" name="matmen" class="element text medium" type="text" maxlength="255" value=""/>
		</div></td>
  </tr>
  <tr>
    <td colspan="3">		<label class="description" for="insti">Instituciones Militares o Militarizadas a que ha pertenecido </label><br /><br />
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
	<li id="sf5">
	<a href='#' class="ui-accordion-link">
	</a>
	<div>
<fieldset>
			<legend>Datos Familiares</legend>
<table border="0" cellspacing="5" width="100%">
  <tr>
    <td>	<label class="description" for="nohrmo">Numero de Hermanos </label>
		<div>
			<input id="nohrmo" name="nohrmo" class="number" type="text" maxlength="2" value=""/>
		</div></td>
    <td>		<label class="description" for="nohrma">Numero de Hermanas </label>
		<div>
			<input id="nohrma" name="nohrma" class="number" type="text" maxlength="2" value=""/>
		</div></td>
    <td>		<label class="description" for="civil">Estado civil de los Padres </label>
		<div>
		<select class="element select medium" id="civil" name="civil" onchange="suprimir(this.value)">
			<option value="Casados" selected="selected">Casados</option>
<option value="Divorciados" >Divorciados</option>
<option value="Viudo">Viudo</option>

		</select>
		</div></td>
  </tr>
  <tr>
    <td colspan="3"><hr /></td>
  </tr>
  <tr>
    <td>		<label class="input required description" for="namep">Nombre del Padre o Tutor </label><br /><br />
		<div>
			<input id="namep" name="namep" class="inputclass pageRequired" type="text" maxlength="60" value=""/>
		</div></td>
    <td>		<label class="description" for="edadp">Edad </label> <br /><br />
		<div>
			<input id="edadp" name="edadp" class="digits" type="text" maxlength="3" value=""/>
		</div></td>
    <td>		<label class="description" for="nacp">Nacionalidad </label><br /><br />
		<div>
			<input id="nacp" name="nacp" class="element text medium" type="text" maxlength="20" value="Mexicana"/>
		</div></td>
  </tr>
  <tr>
    <td>		<label class="description" for="domp">Domicilio </label><br /><br />
		<div>
			<input id="domp" name="domp" class="inputclass" type="text" maxlength="100" value=""/>
		</div></td>
    <td>		<label class="description" for="prop">Profesion u Oficio </label><br /><br />
		<div>
			<input id="prop" name="prop" class="element text medium" type="text" maxlength="30" value=""/>
		</div></td>
    <td>		<label class="description" for="emprep">Empresa donde Trabaja </label><br /><br />
		<div>
			<input id="emprep" name="emprep" class="element text medium" type="text" maxlength="30" value=""/>
		</div></td>
  </tr>

  <tr>
    <td>		<label class="description" for="recordClientPhoneP">Telefono </label><br /><br />
		<span>
        <input name="telp" id="recordClientPhoneP" class="inputclass" maxlength="15" title="Introduzca su Numero telefonico" />
		</span>
</td>
<td>		<label class="description" for="recordClientPhoneAltP">Celular </label><br /><br />
		<span>
        <input name="celp" id="recordClientPhoneAltP" class="inputclass" maxlength="15" title="Numero de celular Opcional" />
		</span>
</td>
<td>		<label class="description" for="element_10">Email </label> <br /> <br />
		<div>
         <input name="emailp" id="recordClientEmailP" class="inputclass email" maxlength="40" title="Es Necesario su E-mail" />
		</div></td>
  </tr>
<tr>
    <td colspan="3"><div id="mama0"><hr /></div></td>
  </tr>
<tr>
    <td><div id="mama11">		<label class="input description" for="namem">Nombre de la Madre </label><br /><br />

			<input id="namem" name="namem" class="inputclass" type="text" maxlength="60" value=""/>
		</div></td>
    <td> <div id="mama12">		<label class="description" for="edadm">Edad </label><br /><br />

			<input id="edadm" name="edadm" class="digits" type="text" maxlength="3" value=""/>
		</div></td>
    <td>  <div id="mama13">		<label class="description" for="nacm">Nacionalidad </label><br /><br />

			<input id="nacm" name="nacm" class="element text medium" type="text" maxlength="25" value="Mexicana"/>
		</div></td>
  </tr>
  <tr>
    <td> <div id="mama21">		<label class="description" for="domm">Domicilio </label><br /><br />
			<input id="domm" name="domm" class="inputclass" type="text" maxlength="100" value=""/>
		</div></td>
    <td><div id="mama22">		<label class="description" for="prom">Profesion u Oficio </label><br /><br />
			<input id="prom" name="prom" class="element text medium" type="text" maxlength="30" value=""/>
		</div></td>
    <td><div id="mama23">		<label class="description" for="emprem">Empresa donde trabaja </label><br /><br />
			<input id="emprem" name="emprem" class="element text medium" type="text" maxlength="30" value=""/>
		</div></td>
  </tr>
  <tr>
    <td><div id="mama31">		<label class="description" for="recordClientPhoneM">Telefono </label><br /><br />
		<span>
        <input name="telm" id="recordClientPhoneM" class="inputclass" maxlength="15" title="Introduzca su Numero telefonico" />
		</span></div>
</td>
<td><div id="mama32">		<label class="description" for="recordClientPhoneAltM">Celular </label><br /><br />
		<span>
        <input name="celm" id="recordClientPhoneAltM" class="inputclass" maxlength="15" title="Numero de celular Opcional" />
		</span></div>
</td>
<td><div id="mama33"> 		<label class="description" for="element_10">Email </label> <br /> <br />
		<div>
         <input name="emailm" id="recordClientEmailM" class="inputclass email" maxlength="40" title="Es Necesario su E-mail" />
		</div></div></td>
  </tr>
<tr><td colspan="3"><hr /></td></tr>
</table>
	<div class="buttonWrapper">
    <a name="formBack3" class="button chico azul open3 prevbutton"/>Anterior</a>
    <a name="formNext5" class="button chico azul open5 nextbutton"/>Siguiente</a>
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
			<input id="alt" name="alt" class="inputclass" type="text" maxlength="4" value=""/>
		</div>
</td>   <td>
		<label class="description" for="peso">Peso </label><br /><br />
		<div>
			<input id="peso" name="peso" class="element text medium" type="text" maxlength="3" value=""/>
		</div>
</td>   <td align="left">
		<label class="description" for="tpan">Talla de Pantalon </label><br /><br />
		<div>
			<input id="tpan" name="tpan" class="element text medium" type="text" maxlength="5" value=""/>
		</div>
</td>   </tr><tr><td>
		<label class="description" for="tcam">Talla de camisa </label><br /><br />
		<div>
			<input id="tcam" name="tcam" class="element text medium" type="text" maxlength="5" value=""/>
		</div>
</td>   <td>
		<label class="description" for="ncal">No. calzado </label><br /><br />
		<div>
			<input id="ncal" name="ncal" class="element text medium" type="text" maxlength="5" value=""/>
		</div>
</td>   <td align="left">
		<label class="description" for="ngor">No. Gorra </label><br /><br />
		<div>
			<input id="ngor" name="ngor" class="element text medium" type="text" maxlength="5" value=""/>
		</div>
</td>   </tr><tr><td valign="top">
		<label class="description" for="ts">Tipo Sanguineo </label><br /><br />
		<div>
		<select  id="ts" name="ts" >
<option value="null" selected="selected">Especifique</option>
<option value="O+">O+</option>
<option value="O-" >O−</option>
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
		</select>
		</div>
</td><td colspan="2">
		<label class="input required description" for="nota">Mencione por que le interesa ingresar a esta intitucion </label><br /><br />

			<textarea cols="50" rows="5" id="nota" name="nota" class="inputclass pageRequired"></textarea>

</td></tr>
<!--     <tr>
             <td width="200" valign="top"><b>Código de confirmación:</b></td>
             <td><img src="captcha.php" width="100" height="30" vspace="3"></td>
             <td><input class="fill" name="tmptxt" type="text" id="tmptxt" size="30"></td>
           </tr>-->

<tr><td colspan="3" align="right">
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
</form><?}?>
<!--		<div id="footer">
			Generated by <a href="http://www.phpform.org">pForm</a>
		</div>-->
	</div>
	</div>

<?php
echo "</div>";
?>
</center>
        <div id="content_bot">
<center>        <br /><span class='desing'><b>Copyright &copy;2012 - Power by:</b> <a class='linktag' href='mailto:<? echo $mailwz; ?>'>Web de Zapotlán.com</a></span>
</center></div>
        <div id="shadow_con_bot"></div>
 </div>

</div>
</body>
</html>