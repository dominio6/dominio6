<? if($_GET['mode']=="exit"){session_start();$_SESSION['access']="no";session_destroy(); }else{session_start();}  ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="icon.png" type="image/x-icon" rel="shortcut icon" />
<title>CMAM</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <script src="lib/jquery.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="stylesheets/thumbnailviewer.css" type="text/css" />
<script src="lib/thumbnailviewer.js" type="text/javascript"></script>
<script type="text/javascript" src="lib/jquery.timers.js"></script>
<script type="text/javascript" src="lib/jquery.dropshadow.js"></script>
<script type="text/javascript" src="lib/mbTooltip.js"></script>
<link rel="stylesheet" type="text/css" href="stylesheets/mbTooltip.css" title="style1"  media="screen">

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


	<script src="jquery.timer2.js" type="text/javascript"></script>
	<script src="jquery.easing.1.3.js" type="text/javascript"></script>
	<script src="jquery.dwdinanews.0.1.js" type="text/javascript"></script>

	<style type="text/css">

	#novedades{  background:  url(img/baro.png);
                    -moz-border-radius:5px;
  -webkit-border-radius:5px;
  -o-border-radius:5px;
  border-radius:5px;;
		border: 1px solid #009900;
		width: 234px;
		height: 100px;
		overflow: hidden;
	}
	#novedades ul{
		margin: 0;
		padding: 0;
		position: relative;
		top: 0;
		left: 0;
	}
	#novedades li{
		margin: 0;
		padding: 5px;
		height: 90px;
		overflow: hidden;
		line-height: 16px;
	}
	#novedades li a{
		font-weight: bold;
		text-transform: uppercase;
	}

	</style>
<script language="javascript">
$(document).ready(function(){
	$("#novedades").dwdinanews({
		retardo: 5000,
		tiempoAnimacion: 1000,
		funcionAnimacion: 'easeInOutElastic'
	});
});
</script>
<link rel="stylesheet" href="stylesheets/styles.css" type="text/css" />
    <!--[if IE]>
        <link rel="stylesheet" href="stylesheets/ie.css" type="text/css" media="screen" />
    <![endif]-->









</head>
<body>


<div id="midiv">



<div class="logo" id="frm"><div style="background: url(real.png)left bottom no-repeat; height: 135px;">
<center>COLEGIO MILITARIZADO<br />
"AGUILAS DE MEXICO"<br /><br />

<span style="font-size:15px;">Constitución No. 434 - Col. Centro - Cd. Guzmán, Jal. - Tel 01 (341) 413-32-08</span>
</center>
</div>

</div>



<div id="divtxt">

<?include("menublue.php"); ?>
<br /><br />

<center>
 <?php
echo "<div id='apDiv6' align='left'>";
?>



<div style="display:table; border-spacing: 5px; " >
La Pagina y todos losprocesos han sido bloqueados por seguridad; debido a que alguien ajeno a los administradores intento modificar la pagina.<br />
Por favot contacte a los WebMasters para solucionarlo <? echo size(); ?>
 </div>

 <br />
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