<script language="JavaScript" type="text/javascript">
function fn_cerrar_bd(){
	$.unblockUI({
		onUnblock: function(){
			$("#div_ocultobd").html("");
		}
	});
};
</script>
<?   include("keyaccess.php"); include("libreria.php");
	@set_time_limit( 0 );

	echo( "<div style='width:650px;'><h1>Base de Datos: '$basedd' en '$db_server'.</h1><br>" );
	$error = false;
	$tablas = 0;
    echo "
        <table class='formulario' border='0' width='100%'>
        <tbody>
            <tr>
                <td>
    ";
	if( !@function_exists( 'gzopen' ) ) {
		$hay_Zlib = false;
		echo( "<span class='icoinf'> No est&aacute; disponible Zlib, se salvar&aacute; la Base de Datos sin comprimir, como '$filename'</span><br>" );
	}
	else {
		$filename = $filename . ".gz";
		$hay_Zlib = true;
		echo( "<span class='icoinf'> Est&aacute; disponible Zlib, se salvar&aacute; la Base de Datos comprimida, como '$filename'</span><br>" );
	}

	if( !$error ) {
	    $dbconnection = @mysql_connect( $db_server, $db_username, $db_password );
	    if( $dbconnection)
	        $db = mysql_select_db( $basedd );
	    if( !$dbconnection || !$db ) {
	        echo( "<span class='vineno'> La conexion con la Base de datos ha fallado: ".mysql_error()."</span><br>" );
	        $error = true;
	    }
	    else {
	        echo( "<span class='vineta'> Se establecio conexion con la Base de datos. </span><br>" );
	    }
	}

	if( !$error ) {
		//  MySQL versión
		$result = mysql_query( 'SELECT VERSION() AS version' );
		if( $result != FALSE && @mysql_num_rows($result) > 0 ) {
			$row   = mysql_fetch_array($result);
		} else {
			$result = @mysql_query( 'SHOW VARIABLES LIKE \'version\'' );
			if( $result != FALSE && @mysql_num_rows($result) > 0 ){
				$row   = mysql_fetch_row( $result );
			}
		}
		if(! isset($row) ) {
			$row['version'] = '3.21.0';
		}
	}

	if( !$error ) {
		$el_path = getenv("REQUEST_URI");
		$el_path = substr($el_path, strpos($el_path, "/"), strrpos($el_path, "/"));

		$result =query( 'SHOW tables' ) ;   // mysql_list_tables( $basedd )
		if( !$result ) {
			print "<span class='vineno'> Error, no puedo obtener la lista de las tablas.<br>";
			print '- MySQL Error: ' . mysql_error(). '</span><br><br>';
			$error = true;
		}
		else {
			$t_start = time();

			if( !$hay_Zlib )
				$filehandle = fopen( $filename, 'w' );
			else
				$filehandle = gzopen( $filename, 'w6' );	//  nivel de compresión

			if( !$filehandle ) {
				$el_path = getenv("REQUEST_URI");
				$el_path = substr($el_path, strpos($el_path, "/"), strrpos($el_path, "/"));
				echo( "<br>" );
				echo( "<span class='vineno'> No he podido crear '$filename' en '$el_path/'. Por favor, asegúrese de<br>" );
				echo( "&nbsp;&nbsp;que dispone de privilegios de escritura.</span><br>" );
			}
			else {
				$tabledump = "-- Dump de la Base de Datos\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				setlocale( LC_TIME,"spanish" );
				$tabledump = "-- Fecha: " . strftime( "%A %d %B %Y - %H:%M:%S", time() ) . "\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				$tabledump = "--\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				$tabledump = "-- Version: " . Str_VERS . ", del " . Str_DATE . ", insidephp@gmail.com\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				$tabledump = "-- Soporte y Updaters: http://insidephp.sytes.net\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				$tabledump = "--\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				$tabledump = "-- Host: `$db_server`    Database: `$basedd`\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				$tabledump = "-- ------------------------------------------------------\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				$tabledump = "-- Server version	". $row['version'] . "\n\n";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );

				$result = query( 'SHOW tables' );
				while( $currow = fetch_array($result, DBARRAY_NUM) ) {
					fetch_table_dump_sql( $currow[0], $filehandle );
					fwrite( $filehandle, "\n" );
					if( !$hay_Zlib )
						fwrite( $filehandle, "\n" );
					else
						gzwrite( $filehandle, "\n" );
						$tablas++;
				}
				$tabledump = "\n-- Dump de la Base de Datos Completo.";
				if( !$hay_Zlib )
					fwrite( $filehandle, $tabledump );
				else
					gzwrite( $filehandle, $tabledump );
				if( !$hay_Zlib )
					fclose( $filehandle );
				else
					gzclose( $filehandle );

				$t_now = time();
				$t_delta = $t_now - $t_start;
				if( !$t_delta )
					$t_delta = 1;
				$t_delta = floor(($t_delta-(floor($t_delta/3600)*3600))/60)." minutos y "
				.floor($t_delta-(floor($t_delta/60))*60)." segundos.";
				echo( "<span class='vineta'> He salvado las $tablas tablas en $t_delta</span><br>" );
				echo( "<span class='vineta'> El Backup de la Base de Datos est&aacute; completo.</span><br>" );
				echo( "<span class='vineta'> La Base de Datos se guardo en: $el_path/$filename</span><br>" );
				echo( "<br>" );
				echo( "<span class='icoinf'> Puede baj&aacute;r el backup directamente: </strong><a class='linkpag' href='$filename'>$filename</a></strong></span>" );
				$size = filesize($filename);
				$size = number_format( $size );
				$size = str_replace( ",",".",$size );
				echo( "&nbsp;&nbsp;&nbsp;<small>($size bytes)</small><br>" );
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
		}
	}

	if( $dbconnection )
	    mysql_close();


//------------------------------------------------------------------------------------------
//  END
?>
