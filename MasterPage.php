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
<link rel="stylesheet" type="text/css" href="promptumenu/promptumenu.css" />
<script type="text/javascript" src="promptumenu/jquery.promptumenu.min.js"></script>
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
</script>
<link rel="stylesheet" href="stylesheets/styles.css" type="text/css" />
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


    horaImprimible = "<b style='color: #363636;'>Hora:</b> "+h + " : " + minuto + " : " + segundo+" "+ap;

    document.getElementById('lateral').innerHTML  = horaImprimible

    setTimeout("mueveReloj()",1000);
}

function pag(){
    document.getElementById('wait').style.display = 'none';
    document.getElementById('apDiv6').style.visibility  = 'visible'

}

function verasp(){
    //queryasp();
    setTimeout("verasp()",60000);
}

/*function queryasp(){
	//var str = $("#frm_busmast").serialize();
	$.ajax({
		url: 'query_asp.php',
		type: 'get',
		//data: str,
		success: function(data){
			$("#aspi").html(data);
		}
	});
}*/

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
                    <b style='margin-left:10px;' title='$_SESSION[nombre]'>$_SESSION[nick]</b>
                        <br />
                    <b style='margin-left:10px;'>[<span style='color:#5BCC1E;'>$_SESSION[cuenta]</span>]</b>
                </td>
               <td  align='right'valign='top' >
               <span class='exit'>&nbsp;</span><a class='linkpag' href='exit.php'>salir</a><br />$fechaactual <br /><span class='time' id='lateral' ><b>Hora:</b> 00 : 00 : 00 xm</span></td>
             </tr>
           </table>
          </div>

      </div>
  <br/> "; }?>

<div id="divtxt">
<? include("menublue.php"); ?>
<br />
<center>

<div id="wait">
<br /><img src="img/D6.png" width="90" height="90" alt="" /><br /><img src="ico/wait.gif" align="middle" border="0" alt="Cargando..." />
<br /><br /><a>Cargando, Espere un Momento...</a></div>

<? if($_SESSION['access']=="si"){ ?>
 <div id='apDiv6' style='visibility: hidden;' >
<? include($page_content);?>
 </div>
<? }else{ ?>
  <br /><br /><br />
    <img src="img/candado.png" width="114" height="168" border="0" alt="" /><br /><br/>
    <p align="center">Parece que Usted es un usuario no autorizado,<br />
    puede que su Sesión haya Expirado o Finalizado, por Favor <a href="login.php?Q=2"><u>Identifíquece</u></a> nuevamente
    <br />Disculpe las molestias </p>
    <br/>
<? } ?>
</center>

<div class="reference">
    <div class="row">
        <span>
            ©Dominio6 Niños Héroes #3045 int 204 Jardines del Bosque Guadalajara Jalisco, México  <span class="phone"> +52(33)15.88.22.10 </span><a href="mailto:<?= $mailwz ?>?subject=Contacto del sitio Dominio 6"> contacto@dominio6.com </a>
        </span>
        <a href="privacidad.html" class="no_bg">Aviso de Privacidad</a>
    </div>
</div><br /><br /><br /><br /><br />
</div>
</div>
</body>
</html>
