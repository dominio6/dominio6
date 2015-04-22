<script language="JavaScript" type="text/javascript">
function fn_cerrar_bd(){
	$.unblockUI({
		onUnblock: function(){
			$("#div_ocultobd").html("");
		}
	});
};


function fn_restorex(boton){// alert(id+", "+lvl);
    var str = "enviar="+boton;
	//var str = $("#frm_listmat").serialize();
	$.ajax({
		url: 'restore.php',
		type: 'post',
		data: str,
		success: function(data){
			$("#div_ocultobd").html(data);
		}
	});
}

</script>
<?php
include("keyaccess.php"); include("libreria.php");
	@set_time_limit( 0 );

	echo( "<div style='width:650px;'><h1>Base de Datos: '$basedd' en '$db_server'.</h1><br>" );


if($_POST['enviar'] == 'Continuar'){
	@set_time_limit( 0 );

    echo "
        <table class='formulario' border='0' width='100%'>
        <tbody>
            <tr>
                <td>
    ";

    $error = false;

	if ( !@function_exists( 'gzopen' ) ) {
		$hay_Zlib = false;
		echo( "<span class='icoinf'> No est&aacute; disponible Zlib, se usar&aacute; el BackUp de la Base de Datos: '$filename'</span><br>" );
	}
	else {
		$hay_Zlib = true;
		$filename = $filename . ".gz";
		echo( "<span class='icoinf'> Est&aacute; disponible Zlib, se usar&aacute; el BackUp de la Base de Datos: '$filename'</span><br>" );
	}

	if( !$file = @fopen( $filename,"r" ) ) {
	    echo ("<br><span class='vineno'> No se encuentra o no se puede abrir: '$filename'.</span><br>");
	    $error = true;
	}
	else {
	    if( fseek($file, 0, SEEK_END)==0 )
	        $filesize_comprimido = ftell( $file );
	    else {
	       echo ("<br><span class='vineno'> No se puedo obtener las dimensiones de '$filename'.<br>");
	       $error = true;
	    }
	 	  fclose( $file );
	}

	if ( !$error ) {
		if( $hay_Zlib ) {
			if ( !$file = @gzopen( $filename, "rb" ) ) {
				echo( "<br><span class='vineno'> No se encuentra o no se puede abrir: '$filename'.</span><br>" );
				$error = true;
			}
			else {
				gzrewind( $file );
			}
		}
		else {
			if ( !$file = @fopen( $filename, "rb" ) ) {
				echo( "<br><span class='vineno'> No se encuentra o no se puede abrir: '$filename'.</span><br>" );
				$error = true;
			}
			else {
				rewind( $file );
			}
		}
	}

	if (!$error) {
	    $dbconnection = @mysql_connect( $db_server, $db_username, $db_password );
	    if ($dbconnection)
	        $db = mysql_select_db( $basedd );
	    if ( !$dbconnection || !$db ) {
	        echo( "<span class='vineno'> La conexion con la Base de datos ha fallado: ".mysql_error()."</span>" );
	        $error = true;
	    }
	    else {
	        echo( "<span class='vineta'> Se establecido conexion con la Base de datos.</span>" );
	    }
	}
           echo "<br />";
	if (!$error) {
	    $result = query( 'SHOW tables' ) ;   // mysql_list_tables( $basedd );
			if (!$result) {
					print "<br>- Error, no puedo obtener la lista de las tablas.<br>";
					print '<br>- MySQL Error: ' . mysql_error(). '<br>';
					$error = true;
			}
			else {
					// $count es el número de tablas en la base de datos
					$count = mysql_num_rows($result);
					if( !$count ) {
							echo "<span class='vineta'> No ha sido necesario borrar la estructura de la Base de datos, estaba vacía.</span><br>";
					}
					else {
							while ($row = mysql_fetch_row($result)) {
									$deleteIt = mysql_query("DROP TABLE $row[0]");
									if( !$deleteIt ) {
	        						echo( "<br>" );
											print "- Lo siento, error al borrar la tabla $row[0].<br>";
											$error = true;
											break;
									}
							}
							echo "<span class='vineta'> Se borro la estructura de la Base de Datos.</span><br>";
					}
					mysql_free_result($result);
			}
	}

	if( !$error ) {
	    $query = "";
	    $last_query = "";
	    $total_queries = 0;
	    $total_lineas = 0;

			$t_start = time();

			while( 1 ) {
				if( $hay_Zlib )
					$seacabo = gzeof( $file ) OR $error;
				else
					$seacabo = feof( $file ) OR $error;
				if( $seacabo )
					break;
				if( $hay_Zlib )
					$statement = gzgets( $file );
				else
					$statement = fgets( $file );

	        $statement = trim( $statement );
	        $total_lineas++;
	        // no se procesan comentarios ni lineas en blanco
	        if ( $statement=="--" || $statement=="" || strpos ($statement, "#") === 0) {
	            continue;
	        }
	        // pasa a query
	        $query .= $statement;
	        // ejecuta query si esta completo
	        if( preg_match( "/;$/", $statement ) ) {//antes era:  ereg( ";$", $statement )
	            if ( !mysql_query( $query, $dbconnection) ) {
	                echo(" <br>" );
	                echo("- Error en statement: $statement<br>" );
	                echo("- Query: $query<br>");
	                echo("- MySQL: ".mysql_error()."<br>" );
	                $error = true;
	                break;
	            }
	            $last_query = $query;
	            $query = "";
	            $total_queries++;
	        }
	    }

			if( $hay_Zlib )
				$file_offset = gztell($file);
	    else
	    	$file_offset = ftell($file);

	    echo( "<span class='vineta'> L&iacute;neas procesadas..................................... $total_lineas</span><br>" );
	    echo( "<span class='vineta'> Queries procesadas................................... $total_queries</span><br>" );
	    echo( "<span class='vineta'> &Uacute;ltimo Query procesado............................ '$last_query'</span><br>" );
			if( $hay_Zlib ) {
	    	echo( "<span class='vineta'> Base de Datos comprimida.......................... $filesize_comprimido bytes</span><br>");
	    	echo( "<span class='vineta'> Base de Datos descomprimida y procesada... $file_offset bytes</span><br>" );
	  	}
	  	else {
	    	echo( "<span class='vineta'> Base de Datos procesada................... $file_offset bytes</span><br>" );
	  	}
			$t_now = time();
			$t_delta = $t_now - $t_start;
			if( !$t_delta )
				$t_delta = 1;
			$t_delta = floor(($t_delta-(floor($t_delta/3600)*3600))/60)." minutos y "
			.floor($t_delta-(floor($t_delta/60))*60)." segundos.";
			echo( "<br /><span class='icoinf'> Se completo el Restore de la Base de Datos en $t_delta</span><br>" );
	}

	if ( $dbconnection )
	    mysql_close();
	if ( $file )
		if( $hay_Zlib )
			gzclose($file);
	   else
	    fclose($file);

                echo"
                                </td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td><hr/>
                    <input name='cancelar' type='button' id='miBotonNorm' value='Cerrar' onclick='fn_cerrar_bd();' />
                </td>
            </tr>
        </tfoot>
    </table>
               </div> ";
}
else{
?>
<form name="backup" action="javascript: fn_restorex('Continuar');" method="post"  id="frm_res">
        <table class='formulario' border='0' width='100%'>
        <tbody>
            <tr>
                <td>
    Antenc&iacute;on, antes de seguir tome en cuenta que el restore tomara el cualquier Backup echo anteriormete, asegurese que &eacute;ste sea el m&aacute;s reciente de lo contrario, perdera la informaci&oacute;n hasta ahora almacenada

    </td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td><input id="miBoton" type="submit" name="enviar" value="Continuar" />
                    <input name='cancelar' type='button' id='miBotonNorm' value='Cerrar' onclick='fn_cerrar_bd();' />
                </td>
            </tr>
        </tfoot>
    </table>
</form>
</div>
<? }   ?>