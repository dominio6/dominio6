
 <script type="text/javascript">
function pageLoad() {

                $('#btnEntrar').click(function(){
                  //alert ( $('#username').val() );
                  var ban = true;
                       if($('#username').val() == ""){
                            $('#username').attr('style','border:red solid 1px;');
                         ban = false;
                       }
                       if($('#txtpass').val() == ""){
                          $('#txtpass').attr('style','border:red solid 1px;');
                         ban = false;
                       }
                       return ban;
                });




}


function focusFunction() {
     $('#txtpass').attr('style','border:black solid 1px;');
}

</script>
<? if($_GET['mode']=="sendpassword" or $_POST['mode']=="sendpassword"   ){


if($_POST['nick']!="" and $_POST['mail']!=""){
      if($link==false){
      echo "<br><b>>> </b>Error: no se pudo conectar con MySql...<br>Intentelo nuevamente";
      exit; }
  else{
   //echo "<br><b>>> </b>Se establecio conexion con el servidor de MySql...";

	 $sql="use ".$basedd;
	      if(@mysql_query($sql,$link)){

//mysql_select_db($basedd,$link);
   $resultado = @mysql_query("SELECT * FROM users WHERE nick LIKE '".$_POST[nick]."' and email LIKE '".$_POST[mail]."'");

echo "  <center>
     <div class='round' align='left'>
         <span class='top'><span></span></span>
             <div class='title'>Información
             <hr style='border: 1px solid #339933; height: 1px;' />
             </div>
         <div class='contenidob'>";

      		if(mysql_num_rows($resultado) == 1){$_SESSION['hidden']=true;
            $row = mysql_fetch_array($resultado);

        $para=$row["email"];
        $asunto = "Comunidad Cientifica - Recuperacion de Contraseña";
        $headers = "MIME-Version: 1.0\r\n";
        $headers .= "Content-type: text/html; charset=iso-8859-1\r\n";
        $headers .= "From: Comunidad Cientifica <nostico-22@hotmail.com>\r\n";
        $headers .= "Reply-To: nostico-22@hotmail.com\r\n";
        $headers .= "X-Mailer: PHP/" . phpversion();
        $mensaje="Estimado <b>".$row["nick"]."</b> por medio de esta via nos permitimos recordarle que su contrase&ntilde;a en nuestra comunidad es: ".$row["pass"];

         if( mail($para,$asunto,$mensaje,$headers) ){echo "<span class='vineta'></span>Sú contraseña fue enviada al correo registrado, por favor revice sus mensajes incluyendo correo no deseado ";}
        else{echo "<span class='vineno'></span>Lo sentimos, al parecer su correo no se pudo enviar en este momento por favor intentelo más tarde...";}


            echo "
         <br /><br />
         <a class='linkpag' href='index.php' target='_self'>Volver a la página principal</a>
         <br />";}
				else{$_SESSION['hidden']=true;
				echo "<span class='vineno'></span>Lo sentimos, el usuario/email no se encuentra, intentelo de nuevo
                <br /><br />
         <a class='linkpag' href='index.php' target='_self'>Volver a la página principal</a>
         <br />";}

   		 	}else{
				echo "<span class='vineno'></span>No exite una Base de Datos, debe crear una, vaya a la ficha <b>\"Crear\"</b> ";
				}

echo " <br />
          </div>
          <span class='bottom'><span></span></span>
      </div>
  </center><br />";

mysql_close($link);   }
 }
if($_SESSION['hidden']==false){
?>
 	<form action="login.php" method="post" enctype="multipart/form-data" accept-charset="UTF-8">


  <center>
     <div class="round" align="left">

             <div class="title">Enviar contraseña
             <hr style="border: 1px solid #339933; height: 1px;" />
             </div>
         <div class="contenidob">
          <table width="500"  summary="1" border="0">
             <tr>
               <td><b>Nombre de Usuario:</b></td>
               <td><input class="fill" type="text" name="nick" value="<? echo $_POST['nick']; ?>" maxlength="15" size="18"/></td>
             </tr>
             <tr>
               <td><b>Dirección de email:</b><br />Esta debe ser la dirección de email que introdujo al registrarse.</td>
               <td><input class="fill" type="text" name="mail"  value="<? echo $_POST['mail']; ?>" maxlength="40" size="18"/></td>
             </tr>
           </table><br />
          </div>

      </div>
  </center>
<br />
  <center>
     <div class="round" align="left">
         <span class="top"><span></span></span>
         <div class="contenidob">
           <table align="center">
           <tr>
             <td>
                <input name="mode" type="hidden" value="sendpassword">

                <input id="miBoton" type='submit' value='Enviar' name='no'/>
            </td>
             <td>
                <input id="miBotonNorm" type='reset' value='Limpiar' name='limpiar'/>
             </td>
           </tr>
         </table>
          </div>
          <span class="bottom"><span></span></span>
      </div>
  </center>
 	</form>
<?}    }else{ $_SESSION['hidden']=false;  ?>
  <center>
     <div class="round" align="left">
         <span class="top"><span></span></span>
             <div class="title">¡Bienvenido!, Por favor identificate.
             <hr style="border: 1px solid #669900;" />
             </div>

         <div class="contenidob">     <br>
<center>
 <div id="pass<?=$_GET['Q']; ?>">
                                                 <div style=" height: 10px; color:Orange; text-transform: uppercase; font-weight: bold; "><?=utf8_encode($msg) ?>  </div>  <br>
            <form id="form4" name="form4" method="post" action="door.php">
            <input type="hidden" name="open" value="<?=$_GET['Q']; ?>" />
                <table width="197" height="91" align="center"  summary="1" border="0" >

                    <tr>
                        <td width="78">
                           <label class="texto" > <b>Usuario: </b> </label>
                        </td>
                        <td width="107">
                            <input id="username" class="fill" type="text" name="user" maxlength="15" size="13"style=" text-transform: none; "/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label class="texto"><b>Password:</b> </label>
                        </td>
                        <td>
                            <input id="txtpass" class="fill" type="password" name="pass" maxlength="10" size="7" onfocus="focusFunction()" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2' align='right'>
                            <a class="link" href="?mode=sendpassword" target="_self" style="font-size:12px;">Olvide mi contrseña</a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2' align='right' valign="bottom">
                            <input  id="btnEntrar"  type='submit' value='Entrar' name='agre'/>
                        </td>
                    </tr>
                </table>
            </form>



</div></center><br />
                  </div>

      </div>
  </center>

<br />



<? }  ?>

