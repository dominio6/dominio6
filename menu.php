<? if($_GET['mode']=="exit"){session_start();$_SESSION['access']="no";session_destroy(); }else{session_start();}  ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<? include("keyaccess.php");include("libreria.php"); ?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="icon.png" type="image/x-icon" rel="shortcut icon" />
<title>.:.Dominio 6.:.</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <script src="lib/jquery.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="boton.css" type="text/css" media="screen" />
<link rel="stylesheet" href="stylesheets/main.css" type="text/css" media="screen" />
    <!--[if IE]>
        <link rel="stylesheet" href="stylesheets/ie.css" type="text/css" media="screen" />
    <![endif]-->
    <!--<script type="text/javascript" src="lib/jquery.js"></script>  <script type="text/javascript" src="lib/tabs.js"></script>-->
    <script type="text/javascript" src="lib/tabs.js"></script>

<link rel="stylesheet" href="stylesheets/thumbnailviewer.css" type="text/css" />
<script src="lib/thumbnailviewer.js" type="text/javascript"></script>
<script type="text/javascript" src="lib/jquery.timers.js"></script>
<script type="text/javascript" src="lib/jquery.dropshadow.js"></script>
<script type="text/javascript" src="lib/mbTooltip.js"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/mbTooltip.css" title="style1"  media="screen">
<!-- librerias para ventanas modales -->
        <script language="javascript" type="text/javascript" src="extras/js/jquery.blockUI.js"></script>
        <script language="javascript" type="text/javascript" src="extras/js/AjaxUpload.2.0.min.js"></script>
        <link href="extras/css/estilo.css" rel="stylesheet" type="text/css" />
        <link href="extras/php/PHPPaging.lib.css" rel="stylesheet" type="text/css" />

<!--
<script>
  $(function(){
    $("[title]").mbTooltip({ // also $([domElement]).mbTooltip  >>  in this case only children element are involved
      opacity : .95,       //opacity
      wait:400,           //before show
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
</script>-->
<script src="main.js" type="text/javascript"></script>
<style>
#screenshot{
	position:absolute;
	border:1px solid #ccc;
	background:#333;
	padding:5px;
	display:none;
	color:#fff;
	}
</style>
	<!-- End Stylesheets -->
        <script language="javascript" type="text/javascript" src="index_alum.js"></script>
        <script language="javascript" type="text/javascript" src="index_mast.js"></script>
        <script language="javascript" type="text/javascript" src="index.js"></script>

<script type="text/javascript">

$(document).ready(function(){
  //hide the all of the element with class msg_body
  $(".msg_body5").hide();
  //toggle the componenet with class msg_body
  $(".msg_head5").click(function()  {
    $(this).next(".msg_body5").slideToggle(600);
  });
});
$(document).ready(function(){
  //hide the all of the element with class msg_body
  $(".msg_bodyu").hide();
  //toggle the componenet with class msg_body
  $(".msg_headu").click(function()  {
    $(this).next(".msg_bodyu").slideToggle(600);
  });
});
$(document).ready(function(){
  //hide the all of the element with class msg_body
  $(".msg_bodym").hide();
  //toggle the componenet with class msg_body
  $(".msg_headm").click(function()  {
    $(this).next(".msg_bodym").slideToggle(600);
  });
});


function creditos(){
	$("#creditos").load("creditos.php", function(){
		$.blockUI({
			message: $('#creditos'),
			css:{
				top: '50px',
                left: '50%',
                'margin-left': '-400px'
			}
		});
	});
};

function mueveReloj(){
    momentoActual = new Date()
    hora = momentoActual.getHours()
    minuto = momentoActual.getMinutes()
    segundo = momentoActual.getSeconds()
    h=hora;
    str_segundo = new String (segundo)
    if (str_segundo.length == 1)
       segundo = "0" + segundo

    str_minuto = new String (minuto)
    if (str_minuto.length == 1)
       minuto = "0" + minuto

 /*   str_hora = new String (hora)
    if (str_hora.length == 1)
       hora = "0" + hora*/

       		 if(h < 12)
		 	ap = "am";
		 else{
		 	if( h == 12 )
				ap = "pm";
			else{
				ap = "pm";
				h -= 12; }
		 }


    horaImprimible = "<b>Hora:</b> "+h + " : " + minuto + " : " + segundo+" "+ap;

    document.getElementById('lateral').innerHTML  = horaImprimible

    setTimeout("mueveReloj()",1000);
}

function pag(){
    document.getElementById('wait').style.display = 'none';
    document.getElementById('apDiv6').style.visibility  = 'visible'

}

function verasp(){
    queryasp();
    setTimeout("verasp()",60000);
}

function queryasp(){
	//var str = $("#frm_busmast").serialize();
	$.ajax({
		url: 'query_asp.php',
		type: 'get',
		//data: str,
		success: function(data){
			$("#aspi").html(data);
		}
	});
}

</script>
<link rel="stylesheet" href="stylesheets/styles.css" type="text/css" />
    <!--[if IE]>
        <link rel="stylesheet" href="stylesheets/ie.css" type="text/css" media="screen" />
    <![endif]-->
<?  if(browser()!='IE'){ ?>    <style>
fieldset { /*  border: #0033CC solid 1px;  */
overflow: hidden;
position: relative;
   border: 1px solid #999999;
        -moz-border-radius:3px;
  -webkit-border-radius:3px;
  -o-border-radius:3px;
  border-radius:3px;
}
input[type=checkbox],input[type=radio] {
position: absolute;
left: -999em;
}
input[type=checkbox] + label {
display: block;
padding-left: 25px;
background: url(bullet.gif) top left no-repeat;
}
input[type=checkbox]:checked + label {
background-image:  url(bullet_checked.gif);
color: #0033CC;
}
input[type=checkbox].x:checked + label {
background-image:  url(bullet_checked2.gif);
color: #990000;
}
input[type=radio] + label {
display: block;
padding-left: 25px;
background: url(radio.gif) top left no-repeat;
}
input[type=radio]:checked + label {
background-image:  url(radio_checked.gif);
}

</style><? } ?>

</head>
<body  onload="pag();mueveReloj();verasp();">


<div class=".container">


<!--<div class="logo" >
    <div class="shield">
      <center>COLEGIO MILITARIZADO<br />"AGUILAS DE MEXICO"<br /><br />
      <span style="font-size:15px; color:white;">Constitución No. 434 - Col. Centro - Cd. Guzmán, Jal. - Tel 01 (341) 413-32-08</span>
      </center>
    </div>
</div>-->
 <? if($_SESSION['access']=="si"){ echo "
     <div class='rounduser' align='left'>

         <div class='contenidob'>
          <table   summary='1' border='0'width='100%'>
             <tr>
               <td background='img/marco.png' width='52' height='50' align='center'><a class='screenshot' rel='$_SESSION[foto]'><img src='$_SESSION[foto]' width='52' alt='' /></a></td>
                <td >
                    <b style='margin-left:10px;'>$row[nombre] $row[apep] $row[apem]</b>
                        <br />
                    <b style='margin-left:10px;'>[<span style='color:#0066FF;'>$cuenta</span>]</b>
                </td>
               <td  align='right'valign='top' >
               <span class='exit'>&nbsp;</span><a class='linkpag' href='exit.php'>salir</a><br />$fechaactual <br /><span class='time' id='lateral' ><b>Hora:</b> 00 : 00 : 00 xm</span></td>
             </tr>
           </table>
          </div>

      </div>
  <br/> "; }?>

<div id="divtxt">
<?include("menublue.php"); ?>
<br />
<center>

<div id="wait">
<br /><img src="ico/charger.gif" width="90" height="90" alt="" /><br /><img src="ico/wait.gif" align="middle" border="0" alt="Cargando..." />
<br /><br /><a>SICE Cargando, Espere un Momento...</a></div>

<?php
echo "<div id='apDiv6' style='visibility: hidden;' >";

if($_SESSION['access']=="si"){
    if($_SESSION['cuenta']!='Alumno'){$where=" and u.id=e.id_user";$cuenta=$_SESSION['cuenta'];}else{$cuenta=$_SESSION['cuenta'];}
    if($_SESSION['cuenta']=='Secretaria'){$cuenta="Administrativo";}

   $sql = mysql_query("SELECT * FROM users as u, empleado as e WHERE u.id='$_SESSION[id]'".$where);
                    $row = mysql_fetch_array($sql);


 if(browser()=='IE'){echo"<div class='alerta'style='width:100%;float:left;height:20px;' >&nbsp;<span class='icoalert parpadeo'>&nbsp;</span><b>Para una mejor Visualizacion y Ejecucion de esta Pagina se Recomienda usar  <a title='Descargar Mozilla' style='text-decoration: none' href='http://www.mozilla.org/es-MX/download/?product=firefox-11.0&os=win&lang=es-MX' target='_blank'>Mozilla Firefox</a>. Gracias por su comprension</b></div><br /><br />";}

if($row['tipoa']=="Academico" or $row['tipoa']=="General" or $row['tipoa']=="Admin"){
?>
<div id="aspi">
<?
   $asp = mysql_query("SELECT * FROM users WHERE estado='Pendiente'");
                    if($tasp = mysql_num_rows($asp)){
echo"<div class='alerta'style='width:100%;float:left;height:20px;' >&nbsp;<span class='icoinf '>&nbsp;</span>Hay <b>$tasp</b> Solicitudes de Aspirates en espera, vaya a la <b><u>Ficha de Aspirantes</u></b> para revizarlos</div><br /><br />";
} ?>
</div>
<? }/*$db_selected = mysql_select_db($basedd, $link);
                    if(!$db_selected){die('No se selecciono la BD: ' . mysql_error());}*/

                    //if($row['cuenta']=="Administrador"){$admin=true;}else{$admin=false;} ?>
           <div id="container" class="textob" style="font-size:14px;" >
                <ul class="menu">
                    <li id="dat"<? if($row['cuenta']!="Administrador" and $row['cuenta']!="Secretaria"){ ?>class='active' <? }?> >Mi Cuenta</li>
                    <? if($row['cuenta']=="Administrador" or $row['cuenta']=="Secretaria"){ ?>
                    <li id="des" class="active">Usuarios</li>
                    <? if($row['tipoa']=="Academico" or $row['tipoa']=="General" or $row['tipoa']=="Admin"){ ?><li id="det">Materias</li><? } ?>
                    <? if($row['tipoa']=="Academico" or $row['tipoa']=="General" or $row['tipoa']=="Admin"){ ?><li id="vid">Aspirantes</li><? } ?>
                    <? if($row['tipoa']=="Academico" or $row['tipoa']=="General" or $row['tipoa']=="Admin"){ ?><li id="pan">Grupos</li><? } ?>
                    <? if($row['tipoa']=="Contable" or $row['tipoa']=="General" or $row['tipoa']=="Admin"){ ?><li id="cuo">Cuotas</li><? } ?>
                    <?  if($row['cuenta']=="Administrador"){  ?><li id="con">Base de datos</li><? }} ?>
                    <? if($row['cuenta']=="Alumno"){ ?>
                    <li id="img">Boleta</li>
                    <li id="pag">Pagos</li>
                    <li id="arr">Arrestos</li>
                    <li id="kar">Kardex</li>
                    <? } ?>
                    <? if($row['cuenta']=="Maestro"){ ?>
                    <li id="pan">Mis Grupos</li> <? } ?>
                    <? if($row['cuenta']=="Administrador" or $row['cuenta']=="Secretaria"){ ?><li id="ubi">Reportes</li> <? }?>
<!-- Contenidos -->

                </ul>
                <span class="clear"></span>


                <div class="content dat" <? if($row['cuenta']!="Administrador" and $row['cuenta']!="Secretaria"){ ?>style="display:block;" <? }?> >
                <!--<h1>Creditos</h1>-->
                <? include "datos.php";?>
                </div>

                 <? if($row['cuenta']=="Administrador" or $row['cuenta']=="Secretaria"){ ?>
                <div class="content des" style="display:block;">
                <!--<h1>Usuarios</h1><hr/> -->
                <? if($row['tipoa']=="Academico" or $row['tipoa']=="General" or $row['tipoa']=="Admin"){include "usuarios.php";}else{include("cap_user_alum.php");} ?>
                </div>

                <div class="content det">
                <!--<h1>Materias</h1> -->
                <? include "cap_materias.php";?>
                </div>

                <div class="content vid">
                <!--<h1>Aspirantes</h1>-->
                <? include "ver_aspirantes.php";?>
                </div>

                <div class="content pan">
                <!--<h1>Grupos</h1>-->
                <? include "cap_grupos.php";?>
                </div>

                <div class="content cuo">
                <!--<h1>Grupos</h1>-->
                <? include "cap_cuotas.php";?>
                </div>

                <div class="content con">
                <!--<h1>BD</h1>-->
                <? include "bd.php";?>
                </div>

                <div class="content ubi">
                <!--<h1>reportes</h1>-->
                <? include "reportes.php";?>
                </div>
                <? } ?>

                <? if($row['cuenta']=="Alumno"){ ?>
                <div class="content img">
                <!--<h1>Calificaciones</h1> -->
                <? include "ver_boleta.php";?>
                </div>

                <div class="content pag">
                <!--<h1>Calificaciones</h1> -->
                <? include "ver_pagos.php";?>
                </div>

                <div class="content arr">
                <!--<h1>Calificaciones</h1> -->
                <? include "ver_arrestos.php";?>
                </div>

                <div class="content kar">
                <!--<h1>Calificaciones</h1> -->
                <? include "ver_kardex.php";?>
                </div>
                 <? } ?>

                <? if($row['cuenta']=="Maestro"){ ?>
                <div class="content pan">
                <!--<h1>Calificaciones</h1> -->
                <? include "cap_grupos.php";?>
                </div>  <? } ?>



            </div>


<!--<div style='width:200px; position: absolute; top:150px; left:730px;'align="center">   background-color: #CCCCFF;

<div class="rmenu_item"><a href="casa.php" target="_self" class="rmenu_link">Usuarios</a></div><br />
<div class="rmenu_item"><a href="begin.php" target="_self" class="rmenu_link">Miembros</a></div><br />
<div class="rmenu_item"><a href="begin.php" target="_self" class="rmenu_link">Proyectos</a></div><br />
<div class="rmenu_item"><a href="begin.php" target="_self" class="rmenu_link">Noticias</a></div><br />


		<div class="rmenu_item"></div><br />
</div> <br clear="all" />
-->

<? }else{ ?>
  <br /><br /><br />
    <img src="img/candado.png" width="114" height="168" border="0" alt="" /><br /><br/>
    <p align="center">Parece que Usted es un usuario no autorizado,<br />
    puede que su Sesión haya Expirado o Finalizado, por Favor <a href="login.php?Q=2"><u>Identifíquece</u></a> nuevamente
    <br />Disculpe las molestias </p>
    <br/>



<? } ?>



<?
echo "</div>";
?>

</center>                                                                                            <!-- href='mailto:<? echo $mailwz; ?>'-->
<!--        <div id="content_bot">
<center>        <br /><span class='desing'><b>Copyright &copy;2012 - Power by:</b> <a class='linktag' href="javascript: creditos();" title="Acerca de SICE" >Web de Zapotlán.com</a></span>
</center></div>
        <div id="shadow_con_bot"></div>
 </div>
<div id="creditos" style="display:none;"></div>-->

<div class="reference">
 <div class="row">
            <span>
                ©Dominio6
               Niños Héroes #3045 int 204 Jardines del Bosque Guadalajara Jalisco, México  <span class="phone"> +52(33)15.88.22.10 </span><a href="mailto:contacto@dominio6.com?subject=Contacto del sitio Dominio 6"> contacto@dominio6.com </a>
                </span>
            <a href="privacidad.html" class="no_bg">Aviso de Privacidad</a>

        </div>
</div>
</div>
</body>
</html>
