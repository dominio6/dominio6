<!--Cadena de conexion-->
<?
//error_reporting(E_ERROR | E_WARNING | E_PARSE);
include_once("xxx.php");

	$db_server			= "localhost";
	$db_username		= "root";
	$db_password		= "";
    $basedd             = "cmam";
$filename 			= "backupCMAM.sql";
$word=50;
$mailwz="contacto@dominio6.com";
//if(size()==10192374){
$link=@mysql_connect($db_server,$db_username,$db_password);
    mysql_select_db($basedd,$link);//}else{ include("error.php"); exit();}
 $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado");
 $meses = array(" ","Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
 $zone=3600*-5;//mex
$fechaactual= "<b style='color: #363636'>Fecha:</b> ".$dias[date('w')].", ". date('d')." de ".$meses[date('m')]." del ". date('Y');//.", ".gmdate("h:i a", time() + $zone);


?>
