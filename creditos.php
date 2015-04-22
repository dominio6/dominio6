<script language="JavaScript" type="text/javascript">
  $(function(){
    $('#about').mbTooltip({ // also $([domElement]).mbTooltip  >>  in this case only children element are involved
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
</script>

<div id="about" style="width:800px;"><a title="Cerrar" class="boxclose" id="boxclose" onclick="cerrar();">&nbsp;</a>
<h1>Sistema Informatico de Control Escolar. Version 1.1 (1.1.8)</h1>
<span style="text-align: justify; ">Estimado Usuario, Gracias por usar este sistema; Elabarorado por el grupo <a title="Enviar un Correo" href='mailto:webzapotlan@yahoo.com'>WebsdeZapotlan </a><!--<img src="ico/charger.gif" width="40">-->
para el uso exclusivo del Colegio Militarizado <b>"Aguilas de M&eacute;xico"</b>.<br>
Si encuentra alg&uacute;n problema al utilizar esta pagina, por favor,
no dude en ponerse en contacto con nuestro equipo de soporte t&eacute;cnico:</span>
<br><br>
 <table border="0" width="100%" class="lista">
   <tr>
     <td rowspan="4"width="150"><img style='border:#006699 solid 2px;' src="ico/milton.png" title="Programador y Analista" width="120px"></td>
     <td>Lic. Inform&aacute;tica  </td>
   </tr>
   <tr>
     <td>Milton Carlos Navarro Castillo </td>
   </tr>
   <tr>
     <td>Cel: 341-102-2010 </td>
   </tr>
   <tr>
     <td>E-Mail: <a title="Enviarle un Correo" href='mailto:miltoneladas_kar@hotmail.com'>miltoneladas_kar@hotmail.com</a></td>
   </tr>
   <tr>
     <td rowspan="4"width="150" ><img style='border:#006699 solid 2px;' src="ico/luis.png" title="Programador, Analista y Dise&ntilde;ador" width="120px"></td>
     <td>Ing. Sistemas Computacionales </td>
   </tr>
   <tr>
     <td>Juan Luis Espinosa Mac&iacute;as </td>
   </tr>
   <tr>
     <td>Cel: 341-122-4857 </td>
   </tr>
   <tr>
     <td>E-Mail: <a title="Enviarle un Correo" href='mailto:nostico-18@hotmail.com'>nostico-18@hotmail.com</a></td>
   </tr>
   <tr>
     <td rowspan="4"width="150" ><img style='border:#006699 solid 2px;' src="ico/efra.png" title="Colaborador Analista" width="120px"></td>
     <td>Ing. Sistemas Computacionales </td>
   </tr>
   <tr>
     <td>Efrain Montes </td>
   </tr>
   <tr>
     <td>Cel: 341-112-4982 </td>
   </tr>
   <tr>
     <td>E-Mail: <a title="Enviarle un Correo" href='mailto:efra1321@hotmail.com'>efra1321@hotmail.com</a></td>
   </tr>

 </table><br></div>

<script language="JavaScript" type="text/javascript">
function cerrar(){
	$.unblockUI({
		onUnblock: function(){
			$("#creditos").html("");
		}
	});
};
</script>




