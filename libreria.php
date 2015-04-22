<?php

//devuelve la fecha en forma de texto
function nombrefecha($fecha){
$fechats = strtotime($fecha); //a timestamp
    //el parametro w en la funcion date indica que queremos el dia de la semana
    //lo devuelve en numero 0 domingo, 1 lunes,....
$complet= date('d', $fechats)." de ";
switch (date('m', $fechats)){
    case 1: $complet.="Enero"; break;
    case 2: $complet.= "Febrero"; break;
    case 3: $complet.= "Marzo"; break;
    case 4: $complet.= "Abril"; break;
    case 5: $complet.= "Mayo"; break;
    case 6: $complet.= "Junio"; break;
    case 7: $complet.= "Julio"; break;
    case 8: $complet.= "Agosto"; break;
    case 9: $complet.= "Septiembre"; break;
    case 10: $complet.= "Octubre"; break;
    case 11: $complet.= "Noviembre"; break;
    case 12: $complet.= "Diciembre"; break;
}$complet.=", ".date('Y', $fechats);
return $complet; }

function nombremes($fecha){
switch ($fecha){
    case 1: $complet="Enero"; break;
    case 2: $complet= "Febrero"; break;
    case 3: $complet= "Marzo"; break;
    case 4: $complet= "Abril"; break;
    case 5: $complet= "Mayo"; break;
    case 6: $complet= "Junio"; break;
    case 7: $complet= "Julio"; break;
    case 8: $complet= "Agosto"; break;
    case 9: $complet= "Septiembre"; break;
    case 10: $complet= "Octubre"; break;
    case 11: $complet= "Noviembre"; break;
    case 12: $complet= "Diciembre"; break;
}
return $complet; }

//hace un resumen de todo el texto
function resumen($cadena, $longitud, $elipsis ) {
    $palabras = explode(' ', $cadena);
    if (count($palabras) > $longitud){
    return implode(' ', array_slice($palabras, 0, $longitud)) . $elipsis;
    }  else {
    return $cadena;}
    }

function fecha($fecha){
    list($mes,$dia,$anio)=explode("/",$fecha);
    return $anio."-".$mes."-".$dia;
}
//------------------------------------------------------------------------------------------
//  Funciones

	error_reporting( E_ALL & ~E_NOTICE );

	function fetch_table_dump_sql($table, $fp = 0) {
		$tabledump = "--\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);
		$tabledump = "-- Table structure for table `$table`\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);
		$tabledump = "--\n\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);

		$tabledump = query_first("SHOW CREATE TABLE $table");
		strip_backticks($tabledump['Create Table']);
		$tabledump = "DROP TABLE IF EXISTS $table;\n" . $tabledump['Create Table'] . ";\n\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);

		$tabledump = "--\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);
		$tabledump = "-- Dumping data for table `$table`\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);
		$tabledump = "--\n\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);

		$tabledump = "LOCK TABLES $table WRITE;\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);

		$rows = query("SELECT * FROM $table");
		$numfields=mysql_num_fields($rows);
		while ($row = fetch_array($rows, DBARRAY_NUM)) {
			$tabledump = "INSERT INTO $table VALUES(";
			$fieldcounter = -1;
			$firstfield = 1;
			// campos
			while (++$fieldcounter < $numfields) {
				if( !$firstfield) {
					$tabledump .= ', ';
				}
				else {
					$firstfield = 0;
				}
				if( !isset($row["$fieldcounter"])) {
					$tabledump .= 'NULL';
				}
				else {
					$tabledump .= "'" . mysql_escape_string($row["$fieldcounter"]) . "'";
				}
			}
			$tabledump .= ");\n";
			if( !$hay_Zlib )
				fwrite($fp, $tabledump);
			else
				gzwrite($fp, $tabledump);
		}
		free_result($rows);
		$tabledump = "UNLOCK TABLES;\n";
		if( !$hay_Zlib )
			fwrite($fp, $tabledump);
		else
			gzwrite($fp, $tabledump);
	}

	function strip_backticks(&$text) {
		return $text;
	}

	function fetch_array($query_id=-1) {
		if( $query_id!=-1) {
			$query_id=$query_id;
		}
		$record = mysql_fetch_array($query_id);
		return $record;
	}

	function problemas($msg) {
		$errdesc = mysql_error();
    $errno = mysql_errno();
    $message  = "<br>";
    $message .= "- Ha habido un problema accediendo a la Base de Datos<br>";
    $message .= "- Error $appname: $msg<br>";
    $message .= "- Error mysql: $errdesc<br>";
    $message .= "- Error n˙mero mysql: $errno<br>";
    $message .= "- Script: ".getenv("REQUEST_URI")."<br>";
    $message .= "- Referer: ".getenv("HTTP_REFERER")."<br>";

		echo( "</strong><br><br><hr><center><small>" );
		setlocale( LC_TIME,"spanish" );
		echo strftime( "%A %d %B %Y&nbsp;-&nbsp;%H:%M:%S", time() );
		echo( "<br>&copy;2005 <a href=\"mailto:insidephp@gmail.com\">Inside PHP</a><br>" );
		echo( "vers." . Str_VERS . "<br>" );
		echo( "</small></center>" );
		echo( "</BODY>" );
		echo( "</HTML>" );
		die("");
  }

	function free_result($query_id=-1) {
    if( $query_id!=-1) {
      $query_id=$query_id;
    }
    return @mysql_free_result($query_id);
  }

  function query_first($query_string) {
    $res = query($query_string);
    $returnarray = fetch_array($res);
    free_result($res);
    return $returnarray;
  }

	function query($query_string) {
    $query_id = mysql_query($query_string);
    if( !$query_id) {
      problemas("Invalid SQL: ".$query_string);
    }
    return $query_id;
  }

    function nick($nombre_usuario){
   //compruebo que los caracteres sean los permitidos
   $permitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ·ÈÌÛ˙¡…Õ”⁄Ò—_-0123456789";
   for ($i=0; $i<strlen($nombre_usuario); $i++){
      if (strpos($permitidos, substr($nombre_usuario,$i,1))===false){
         //echo $nombre_usuario . " no es v·lido<br>";
         return false;
      }
   }
   //echo $nombre_usuario . " es v·lido<br>";
   return true;
}
    function onlytext($nombre_usuario){
   //compruebo que los caracteres sean los permitidos
   $permitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ·ÈÌÛ˙¡…Õ”⁄Ò— .";
   for ($i=0; $i<strlen($nombre_usuario); $i++){
      if (strpos($permitidos, substr($nombre_usuario,$i,1))===false){
         //echo $nombre_usuario . " no es v·lido<br>";
         return false;
      }
   }
   //echo $nombre_usuario . " es v·lido<br>";
   return true;
}
//--------------------------------------------------------
function rfc($rfc){
 $okRfc = false;
 $rfc = str_replace("-", "", $rfc);
 if(strlen($rfc)==13){
 $subsLetras = substr($rfc, 0, 4);
 $subsNumeros = substr($rfc, 4, 6);
 if ( !is_numeric($subsLetras) ){
 if(is_numeric($subsNumeros)){
 $okRfc = true;
 }else{$okRfc = false; }
 }else{$okRfc = false; }
 }else{

 if(strlen($rfc)==12){
 $subsLetras = substr($rfc, 0, 3);
 $subsNumeros = substr($rfc, 3, 5);
 if (!is_numeric($subsLetras) ){
 if(is_numeric($subsNumeros)){
 $okRfc = true;
 }else{$okRfc = false; }
 }else{$okRfc = false; }
 }else{

 $okRfc = false; }
 }

 return $okRfc;
 }

//------------------------------------------------------------------------------------------
$numeros =    array("-", "un", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve");
        $numerosX =   array("-", "un", "dos", "tres", "cuatro", "cinco", "seis", "siete", "ocho", "nueve");
        $numeros100 = array("-", "ciento", "doscientos", "trecientos", "cuatrocientos", "quinientos", "seicientos", "setecientos", "ochocientos", "novecientos");
        $numeros11 =  array("-", "once", "doce", "trece", "catorce", "quince", "dieciseis", "diecisiete", "dieciocho", "diecinueve");
        $numeros10 =  array("-", "-", "-", "treinta", "cuarenta", "cincuenta", "sesenta", "setenta", "ochenta", "noventa");

        function tresnumeros($n, $last) {
            global $numeros100, $numeros10, $numeros11, $numeros, $numerosX;
            if ($n == 100) return "cien ";
            if ($n == 0) return "cero ";
            $r = "";
            $cen = floor($n / 100);
            $dec = floor(($n % 100) / 10);
            $uni = $n % 10;
            if ($cen > 0) $r .= $numeros100[$cen] . " ";

            switch ($dec) {
                case 0: $special = 0; break;
                case 1: $special = 10; break;
                case 2: $special = 20; break;
                default: $r .= $numeros10[$dec] . " "; $special = 30; break;
            }
            if ($uni == 0) {
                if ($special==30);
                else if ($special==20) $r .= "veinte ";
                else if ($special==10) $r .= "diez ";
                else if ($special==0);
            } else {
                if ($special == 30 && !$last) $r .= "y " . $numerosX[$n%10] . " ";
                else if ($special == 30) $r .= "y " . $numeros[$n%10] . " ";
                else if ($special == 20) {
                    if ($uni == 3) $r .= "veintitrÈs ";
                    else if (!$last) $r .= "veinti" . $numerosX[$n%10] . " ";
                    else $r .= "veinti" . $numeros[$n%10] . " ";
                } else if ($special == 10) $r .= $numeros11[$n%10] . " ";
                else if ($special == 0 && !$last) $r .= $numerosX[$n%10] . " ";
                else if ($special == 0) $r .= $numeros[$n%10] . " ";
            }
            return $r;
        }

        function seisnumeros($n, $last) {
            if ($n == 0) return "cero ";
            $miles = floor($n / 1000);
            $units = $n % 1000;
            $r = "";
            if ($miles == 1) $r .= "mil ";
            else if ($miles > 1) $r .= tresnumeros($miles, false) . "mil ";
            if ($units > 0) $r .= tresnumeros($units, $last);
            return $r;
        }

        function docenumeros($n) {
            if ($n == 0) return "cero ";
            $millo = floor($n / 1000000);
            $units = $n % 1000000;
            $r = "";
            if ($millo == 1) $r .= "un millÛn ";
            else if ($millo > 1) $r .= seisnumeros($millo, false) . "millones ";
            if ($units > 0) $r .= seisnumeros($units, true);
            return $r;
        }
//-------------------------------------------------------------
function ValidaMail($pMail) {
    if (ereg("^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@([_a-zA-Z0-9-]+\.)*[a-zA-Z0-9-]{2,200}\.[a-zA-Z]{2,6}$", $pMail ) ) {
       return true;
    } else {
       return false;
    }
}


//-------------------------------------------------------------
function validaImage($img) {
$imgname = strtolower($img);
$patron = "/(\.bmp|\.png|\.jpg|\.gif|\.jpeg)$/";

if (preg_match($patron, $imgname)) {
    return true;
} else {
    return false;
}

}
//----------------------------------------------------------------
function strtoupperjl($a) {
    return strtr(mb_strtoupper($a), array(
      "·" => "¡",
      "È" => "…",
      "Ì" => "Õ",
      "Û" => "”",
      "˙" => "⁄",
      "Ò" => "—"
    ));
}
//------------------------------------------------------------------
function randomText($length) {
    $pattern = "123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";//abcdefghijklmnopqrstuvwxyz";
    for($i=0;$i<$length;$i++) {
      $key .= $pattern{rand(0,35)};
    }
    return $key;
}
//----------------------------------------------------------------------
    function browser(){ //echo FUNC_brouserUsr();

            if(preg_match("/MSIE/", $_SERVER["HTTP_USER_AGENT"])) $browser = "IE";
            elseif(preg_match("/Mozilla/", $_SERVER["HTTP_USER_AGENT"])) $browser = "Firefox";
            elseif(preg_match("/Lynx/", $_SERVER["HTTP_USER_AGENT"])) $browser = "Lynx";
            elseif(preg_match("/Opera/", $_SERVER["HTTP_USER_AGENT"])) $browser = "Opera";
            elseif(preg_match("/Netscape/", $_SERVER["HTTP_USER_AGENT"])) $browser = "Netscape";
            elseif(ereg("/Konqueror/", $_SERVER["HTTP_USER_AGENT"])) $browser = "Konqueror";

    return $browser;
    }

?>

