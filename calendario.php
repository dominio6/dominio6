<script src="lib/coda.js" type="text/javascript"> </script>

<?php
$ano_siguiente;
$ano_anterior;
$mes;
$nuevo_ano;

   if($_GET['nuevo_mes']==""){
	$tiempo_actual = time();
	$mes = date("n", $tiempo_actual);
	$ano = date("Y", $tiempo_actual);
    } else{
      $mes=$_GET['nuevo_mes'];
      $ano=$_GET['nuevo_ano'];
    }
mostrar_calendario($mes,$ano);

function calcula_numero_dia_semana($dia,$mes,$ano){
	$numerodiasemana = date('w', mktime(0,0,0,$mes,$dia,$ano));
	if ($numerodiasemana == 0) 
		$numerodiasemana = 6;
	else
		$numerodiasemana--;
	return $numerodiasemana;
}

//funcion que devuelve el último día de un mes y año dados
function ultimoDia($mes,$ano){
	$ultimo_dia=28;
	while (checkdate($mes,$ultimo_dia,$ano)){
	        $ultimo_dia++;
	}    
	$ultimo_dia--;
	return $ultimo_dia;
}

function dame_nombre_mes($mes){
    if($mes>=13){$GLOBALS[$mes]=$GLOBALS[$mes]-12;
         $GLOBALS[$nuevo_ano]=$GLOBALS[$nuevo_ano]+1;
          $ano=$GLOBALS[$nuevo_ano];
    }else{
        if($mes<=0){
          $GLOBALS[$mes]=$GLOBALS[$mes]+12;
         $GLOBALS[$nuevo_ano]=$GLOBALS[$nuevo_ano]-1;
          $ano=$GLOBALS[$nuevo_ano];
        }
    }


    $mes=$GLOBALS[$mes];

	 switch ($mes){
	 	case 1:
			$nombre_mes="Enero";
			break;
	 	case 2:
			$nombre_mes="Febrero";
			break;
	 	case 3:
			$nombre_mes="Marzo";
			break;
	 	case 4:
			$nombre_mes="Abril";
			break;
	 	case 5:
			$nombre_mes="Mayo";
			break;
	 	case 6:
			$nombre_mes="Junio";
			break;
	 	case 7:
			$nombre_mes="Julio";
			break;
	 	case 8:
			$nombre_mes="Agosto";
			break;
	 	case 9:
			$nombre_mes="Septiembre";
			break;
	 	case 10:
			$nombre_mes="Octubre";
			break;
	 	case 11:
			$nombre_mes="Noviembre";
			break;
	 	case 12:
			$nombre_mes="Diciembre";
			break;
        default:
            $nombre_mes=$mes;
	}
	return $nombre_mes;
}

function mostrar_calendario($mes,$ano){
    //global $ano_siguiente;
     $GLOBALS[$mes]=$mes;
     $GLOBALS[$nuevo_ano]=$ano;//-1;
     //$GLOBALS[$ano_siguiente]=$ano;//+1;
  $nombre_mes = dame_nombre_mes($GLOBALS[$mes]);    //calculo el mes y año anterior
	 $mes_anterior=$GLOBALS[$mes]-1;
	//calculo el mes y año siguiente
     $mes_siguiente=$GLOBALS[$mes]+1;
     $ano=$GLOBALS[$nuevo_ano];
	//tomo el nombre del mes que hay que imprimir

	//tabla para mostrar el mes el año y los controles para pasar al mes anterior y siguiente
    //construyo la tabla general

	echo '<table cellspacing="1" border="0" class="tablecal cal">';
	echo '	<thead><div class="subtitle">Calendario '.$ano.'</div>';  //'.$nombre_mes.' '.$ano.'
	//finalizo la tabla de cabecera
    echo '<tr ><td class="izqdercel" colspan="7">';
	echo '<a title="Atras" class="izq"';
    if($mes_anterior==0){echo 'onclick="calendar('.(12).','.($GLOBALS[$nuevo_ano]-1).');"';}else{echo 'onclick="calendar('.$mes_anterior.','.$GLOBALS[$nuevo_ano].');"';}echo'><img src="img/back.png" width="24" height="24"></a>'
            . $nombre_mes . '
            <a title="Adelante" class="der"';
    if($mes_siguiente==13){echo 'onclick="calendar('.(1).','.($GLOBALS[$nuevo_ano]+1).');"';}else{echo 'onclick="calendar('.$mes_siguiente.','.$GLOBALS[$nuevo_ano].');"';}echo'><img src="img/next.png" width="24" height="24"></a></td>';
	echo '</tr>';

	//fila con todos los días de la semana
    echo'   <tr>
					<th>Dom</th><th>Lun</th><th>Mar</th><th>Mie</th>
					<th>Jue</th><th>Vie</th><th>Sab</th>
				</tr>
			</thead>
	<tbody>';
	
	//Variable para llevar la cuenta del dia actual
	$dia_actual = 1;
	
	//calculo el numero del dia de la semana del primer dia
	$numero_dia = (calcula_numero_dia_semana(1,$mes,$ano))+1;
	//echo "Numero del dia de demana del primer: $numero_dia <br>";

	//calculo el último dia del mes
	$ultimo_dia = ultimoDia($mes,$ano);

    //conexion y consulta a la BD
include("keyaccess.php");
    //echo $mes;
    $resultado = mysql_query("SELECT * FROM calendario where mes='$mes' and anio='$ano'")or die("Error: " . mysql_error());
    $i=0;

    if(mysql_num_rows($resultado) !=0){
    while($row=mysql_fetch_array($resultado)){
        $eventos[$i]=$row["dia"];
        $actividad[$row["dia"]].="<b>".$row["actividad"]."</b><br>".$row["comentario"]."<br><br>";
        //$actividad[$row["dia"]]=$row["actividad"];
        //$comentario[$row["dia"]]=$row["comentario"];
        $i=$i+1;}
        }else{
                  $eventos[0]="";
                  $actividad[0]="";
                  $comentario[0]="";
        }
	//$eventos = array(4=>'Evento 1',15=>'Evento 2');

mysql_free_result($resultado);




	date_default_timezone_set('America/Mexico_City');
	//$hoy = date("d",mktime(0,0,0,date("m"),date("d"),date("Y")));
	$hoy = date("d",time());
	//escribo la primera fila de la semana
	echo "<tr>";
	for ($i=0;$i<7;$i++){
		if ($i < $numero_dia){
			//si el dia de la semana i es menor que el numero del primer dia de la semana no pongo nada en la celda
            		if ($numero_dia != 7){echo '<td style="background:#D8DDE7;"></td>'; }
		} else {
			if(in_array($dia_actual,$eventos))
			{
				echo '<td class="cal dia_evento">' . $dia_actual;
				echo '<div class="eventos">
						<ul>
							<li>
								'.utf8_decode($actividad[$dia_actual]).'
							</li>
						</ul>
					</div>';
				echo '</td>';
			}
			elseif($dia_actual==$hoy and $mesr==$GLOBALS[$mes] and $anor==$GLOBALS[$nuevo_ano])
				echo '<td class="cal hoy">' . $dia_actual . '</td>';
			else
				echo '<td class="cal">' . $dia_actual . '</td>';
			$dia_actual++;
		}
	}
	echo "</tr>";
	
	
	//recorro todos los demás días hasta el final del mes
    	$tiempo_actual = time();
	$mesr = date("n", $tiempo_actual);
	$anor = date("Y", $tiempo_actual);
	$numero_dia = 0;
	while ($dia_actual <= $ultimo_dia){
		//si estamos a principio de la semana escribo el <TR>
		if ($numero_dia == 0)
			echo "<tr>";
		if(in_array($dia_actual,$eventos))
		{
			echo '<td class="cal dia_evento">' . $dia_actual;
            //usar el utf8_encode() o el utf8_decode() funciona pero no dejan de ser parches.
			echo '<div class="eventos">
					<ul>
						<li>
							'.utf8_decode($actividad[$dia_actual]).'
						</li>
					</ul>
				</div>';
			echo '</td>';
		}
		elseif($dia_actual==$hoy and $mesr==$GLOBALS[$mes] and $anor==$GLOBALS[$nuevo_ano])
			echo '<td class="cal hoy" title="Hoy">'.$dia_actual .'</td>';
		else
			echo '<td class="cal">' . $dia_actual . '</td>';
		$dia_actual++;
		$numero_dia++;
		//si es el uñtimo de la semana, me pongo al principio de la semana y escribo el </tr>
		if ($numero_dia == 7){
			$numero_dia = 0;
			echo "</tr>";
		}
	}
	
	//compruebo que celdas me faltan por escribir vacias de la última semana del mes
	for ($i=$numero_dia;$i<7;$i++){
		if ($numero_dia != 0){echo '<td  style="background:#D8DDE7;"></td>'; }
	}
	
	echo "</tr>";
	echo "</tbody>";
	echo "</table>";
}
?>