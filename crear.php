<?php
session_start();

if($_SESSION['nombre']!="database"){
}else{$pr1=true;}

if($_SESSION['pass']!="create"){

}else{$pr2=true;}

 ?>



<?php
//$basedd="cyv";
$pw=$_POST[pw];
//require_once('noticias.php');
//echo "<div style='border-style:solid; width:500px;height:200px; position: absolute; top: 250px; left: -150px; 'align='left'  >";
//echo "<font style='font-family:century gothic; color:#FF0000; ' size='3.5'; >";

if($pr1&&$pr2){

//echo "<div id='apDiv6'> ";
 ?>


  <center>
     <div class="round" align="left">
             <div class="title">Crear BD
             <hr style="border: 1px solid #339933; height: 1px;" />
             </div>
         <div class="contenidob">
            Esta opcion es solo para los creadores del sistema, si usted entra aqui salga de inmediato,
            si efectua alguna accion sin permiso, se le advierte que se le penalizara seriamente
            <br /><br />
            <a class="linkpag" href="login.php?mode=exit">Regresar</a>
            <br /><br />
          </div>
      </div>
  </center>


<br />

<center>
   <div class="round" align="left">
          <div class="contenidob">
               <table align="center">
                 <tr>
                   <td>
                        <FORM ACTION="call_frmCrear.php?mode=create" method = "post">
                              <input id="miBoton" type="submit" value="Crear la Base de Datos" name="new"/>
                        </form></td>
                   <td>
                        <FORM ACTION="call_frmCrear.php?mode=delete" method = "post">
                              <input id="miBotonNorm" type="submit" value="Eliminar la Base de Datos" name="del"/>
                        </form></td>
                 </tr>
               </table>

        </div>
    </div>
</center>
<br />
<?php
//echo $_GET['mode'];
if($_GET['mode']=="create"){
echo " <center>
     <div class='round' align='left'>
         <span class='top'><span></span></span>
             <div class='title'>Información
             <hr style='border: 1px solid #339933; height: 1px;' />
             </div>
         <div class='contenidob'>";


  if($link==false){
      echo "<br><b>>> </b>Error: no se pudo conectar con MySql...<br>Intentelo nuevamente";
      exit; }
  else{
   echo "<span class='vineta'></span>Se establecio conexion con el servidor...";

	 $sql="use ".$basedd;
	      if(!@mysql_query($sql,$link)){
				//echo "no esta: ".$basedd;
				$c="CREATE DATABASE ".$basedd." DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci";
				$si=@mysql_query($c,$link);
				if($si){echo "<br><span class='vineta'></span>Se creo la Base de Datos <b>\"".$basedd."\"</b>";}
                else{mysql_error();}

	 #crear la tabla

     $sql= "CREATE TABLE users(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "id_grupo INT NOT NULL,";
     $sql.= "fecha date,";
     $sql.= "foto varchar(80),";
     $sql.= "nc varchar(10) not null,";
     $sql.= "nick varchar(15) not null,";
     $sql.= "nombre varchar(30) not null,";
     $sql.= "apep varchar(15) not null,";
     $sql.= "apem varchar(15) not null,";
     $sql.= "tipo varchar(10),";
     $sql.= "email varchar(40),";
     $sql.= "telefono varchar(15),";
     $sql.= "direccion varchar(60),";
     $sql.= "estado varchar(10),";
     $sql.= "pago varchar(10),";
     $sql.= "grado int not null,";
     $sql.= "nivel int not null,";
     $sql.= "cuenta varchar(15) not null,";
     $sql.= "categoria varchar(12) not null,";
     $sql.= "sex CHAR(1) not null,";
     $sql.= "pass VARCHAR(10) not null,";
     $sql.= "primary key (id))";
		 if(@mysql_db_query($basedd,$sql,$link)){  $fecha=Date("Y-m-d");
           if(@mysql_query("INSERT INTO users (fecha, nombre, apep, apem, nick, pass, sex, cuenta, foto) VALUES ('$fecha','Gonzalo Asael','Benavides','Romero','master','cmam18','H','Administrador', 'users/userH.png')")){  mkdir("users/1");
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Usuarios\"</b>"; }else { echo "<br><span class='vineno'></span>No se puedo crear el Administrador General: ".mysql_error();}
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Usuarios\"</b>".mysql_error();}

     $sql= "CREATE TABLE empleado(";
     $sql.= "id_user INT NOT NULL,";
     $sql.= "tipoa varchar(10) not null,";
     $sql.= "curp varchar(18) not null,";
     $sql.= "sex CHAR(1) not null,";
     $sql.= "fechan date,";
     $sql.= "lugar varchar(15) not null,";
     $sql.= "num int not null,";
     $sql.= "col varchar(15) not null,";
     $sql.= "edo varchar(30) not null,";
     $sql.= "mpo varchar(40) not null,";
     $sql.= "zip varchar(5) not null,";
     $sql.= "cel varchar(15),";
     $sql.= "expm char(2) not null,";
     $sql.= "expd char(2) not null,";
     $sql.= "expe char(2) not null,";
     $sql.= "gm varchar(30) not null,";
     $sql.= "oficio varchar(30) not null,";
     $sql.= "espe varchar(30) not null,";
     $sql.= "estatura varchar(8),";
     $sql.= "exp VARCHAR(200) not null,";
     $sql.= "nota VARCHAR(200) not null,";
     $sql.= "folio VARCHAR(8) not null,";
     $sql.= "primary key (id_user))";
		 if(@mysql_db_query($basedd,$sql,$link)){
           if(@mysql_query("INSERT INTO empleado (id_user) VALUES ('1')")){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Empleado\"</b>";}else { echo "<br><span class='vineno'></span>No se puedo crear Informacion del Administrador General: ".mysql_error();}
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Empleado\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE apertura(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "id_per INT NOT NULL,";
     $sql.= "id_user INT NOT NULL,";
     $sql.= "id_mat INT NOT NULL,";
     $sql.= "fecha date,";
     $sql.= "status varchar(7) not null,";
     $sql.= "primary key (id))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Empleado\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Empleado\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE solicitud(";
     //$sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "id_alum INT NOT NULL,";
     $sql.= "pass2 VARCHAR(10) not null,";
     $sql.= "modalidad varchar(12),";
     $sql.= "especialidad varchar(14) not null,";
     $sql.= "curp varchar(18) not null,";
     $sql.= "fechan date,";
     $sql.= "lugar varchar(15) not null,";
     $sql.= "deporte varchar(15) not null,";
     $sql.= "pasatiempo varchar(15) not null,";
     $sql.= "religion varchar(15) not null,";
     $sql.= "num int not null,";
     $sql.= "col varchar(40) not null,";
     $sql.= "edo varchar(40) not null,";
     $sql.= "mpo varchar(40) not null,";
     $sql.= "zip varchar(5) not null,";
     $sql.= "cel varchar(15),";

     $sql.= "secant varchar(50) not null,";
     $sql.= "sectipo varchar(10) not null,";
     $sql.= "seccd varchar(50) not null,";
     $sql.= "secper varchar(40) not null,";
     $sql.= "secpro varchar(15) not null,";
     $sql.= "leng varchar(80) not null,";
     $sql.= "nadar varchar(2) not null,";
     $sql.= "matmas varchar(50) not null,";
     $sql.= "matmen varchar(50) not null,";
     $sql.= "insti varchar(100) not null,";

     $sql.= "nohrmo int not null,";
     $sql.= "nohrma int not null,";
     $sql.= "civil varchar(15) not null,";
     $sql.= "nombrep varchar(40) not null,";
     $sql.= "edadp varchar(2) not null,";
     $sql.= "nacip varchar(15) not null,";
     $sql.= "domp varchar(30) not null,";
     $sql.= "oficiop varchar(30) not null,";
     $sql.= "emprep varchar(30) not null,";
     $sql.= "telp varchar(15),";
     $sql.= "celp varchar(15),";
     $sql.= "emailp varchar(40),";
     $sql.= "nombrem varchar(40) not null,";
     $sql.= "edadm varchar(2) not null,";
     $sql.= "nacim varchar(15) not null,";
     $sql.= "domm varchar(30) not null,";
     $sql.= "oficiom varchar(30) not null,";
     $sql.= "emprem varchar(30) not null,";
     $sql.= "telm varchar(15),";
     $sql.= "celm varchar(15),";
     $sql.= "emailm varchar(40),";

     $sql.= "estatura varchar(8),";
     $sql.= "peso varchar(8),";
     $sql.= "tallapan varchar(8),";
     $sql.= "tallacam varchar(8) not null,";
     $sql.= "calzado VARCHAR(8) not null,";
     $sql.= "gorra VARCHAR(8) not null,";
     $sql.= "sangre VARCHAR(4) not null,";
     $sql.= "motivo VARCHAR(500) not null,";
     $sql.= "razon VARCHAR(200) not null,";
     $sql.= "folio VARCHAR(8) not null,";
     $sql.= "primary key (id_alum))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Solicitud\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Solicitud\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE arrestos(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "fecha date,";
     $sql.= "id_per INT NOT NULL,";
     $sql.= "id_alum INT NOT NULL,";
     $sql.= "id_admin INT NOT NULL,";
     $sql.= "motivo VARCHAR(200) not null,";
     $sql.= "pts INT NOT NULL,";
     $sql.= "hrs INT NOT NULL,";
     $sql.= "primary key (id,id_alum))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Arrestos\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Arrestos\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE pagos(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "categoria VARCHAR(12) not null,";
     $sql.= "periodicidad VARCHAR(12) not null,";
     $sql.= "modalidad varchar(12),";
     $sql.= "concepto VARCHAR(100) not null,";
     $sql.= "descripcion VARCHAR(100),";
     $sql.= "importe Float(7,2) NOT NULL,";
     $sql.= "primary key (id))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Pagos\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Pagos\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE cuenta(";
     $sql.= "id_pago INT NOT NULL,";
     $sql.= "id_alum INT NOT NULL,";
     $sql.= "fechacar varchar(10) not null,";
     $sql.= "fechapag date,";
     $sql.= "importe decimal(7,2) not null,";
     $sql.= "estado VARCHAR(12) not null,";
     $sql.= "primary key (id_pago,id_alum))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Cuenta\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Cuenta\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE cargamaster(";
     $sql.= "id_master INT NOT NULL,";
     $sql.= "id_mat INT NOT NULL,";
     $sql.= "id_per INT NOT NULL,";
     $sql.= "primary key (id_master,id_mat,id_per))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Maestros\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Maestros\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE alumnos(";
     $sql.= "id_grupo INT NOT NULL,";
     $sql.= "id_user INT NOT NULL,";
     $sql.= "primary key (id_grupo,id_user))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Salon\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Salon\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE maestros(";
     $sql.= "id_grupo INT NOT NULL,";
     $sql.= "id_master INT NOT NULL,";
     $sql.= "id_mat INT NOT NULL,";
     $sql.= "categoria varchar(12) not null,";
     $sql.= "primary key (id_grupo,id_master,id_mat))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Salon\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Salon\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE calendario("; // fotos de tanis
     $sql.= "dia varchar(5) NOT NULL,";
     $sql.= "mes varchar(5) NOT NULL,";
     $sql.= "anio varchar(5) NOT NULL,";
     $sql.= "actividad varchar(200) NOT NULL,";
     $sql.= "comentario varchar(500) NOT NULL,";
     $sql.= "primary key (actividad,dia,mes))";

		 if(@mysql_db_query($basedd,$sql,$link)){
            if(@mysql_query("INSERT INTO calendario (dia, mes, anio, actividad, comentario) VALUES
('2', '10', '2012', 'Hallowen', 'asda dadadasd adas dasdasdas das dasd a das dasdasda'),
('1', '01', '2012', 'H', 'asdasdasd\r\nasdasd\r\nasdas\r\nasdasd\r\nasdasd\r\nasdasdasdasdasdas\r\n'),
('18', '12', '2012', 'Posadas de Navidad', 'posadas de navidad antes de salir de vacasiones'),
('26', '11', '2012', 'Dia de Accion de Gracias', 'Dia de accion de gracias segun la cultura americana')")
              ){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"calendario\"</b>"; }
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"calendario\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE materias(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "clave varchar(8),";
     $sql.= "titulo VARCHAR(160) not null,";
     $sql.= "categoria varchar(12) not null,";
     $sql.= "nivel varchar(1) not null,";
     $sql.= "tipo varchar(12) not null,";
     $sql.= "especial varchar(14) not null,";
     $sql.= "creditos int not null,";
     $sql.= "hrs int not null,";
     //$sql.= "grado int NOT NULL,";
     $sql.= "primary key (id))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Materias\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Materias\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE periodos(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "nombre varchar(20) not null,";
     $sql.= "cicloi date,";
     $sql.= "ciclof date,";
     $sql.= "estado varchar(8) not null,";
     $sql.= "categoria varchar(12) not null,";
     $sql.= "ppi date,";
     $sql.= "ppf date,";
     $sql.= "spi date,";
     $sql.= "spf date,";
     $sql.= "tpi date,";
     $sql.= "tpf date,";
     $sql.= "cpi date,";
     $sql.= "cpf date,";
     $sql.= "qpi date,";
     $sql.= "qpf date,";
     $sql.= "xpi date,";
     $sql.= "xpf date,";
     $sql.= "primary key (id))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Periodos\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Periodos\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE permisos(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "id_master int not null,";
     $sql.= "fecha date,";
     $sql.= "categoria Varchar(12) not null,";
     $sql.= "parcial char(1) not null,";
     $sql.= "estado char(1) not null,";
     $sql.= "causa varchar(50) not null,";
     $sql.= "primary key (id))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Permisos\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Permisos\"</b>: ".mysql_error();}

     $sql= "CREATE TABLE calificaciones(";
     $sql.= "id_user INT NOT NULL,";
     $sql.= "id_mat INT NOT NULL,";
     $sql.= "id_per INT NOT NULL,";
     $sql.= "pp int NOT NULL,";
     $sql.= "sp int NOT NULL,";
     $sql.= "tp int NOT NULL,";
     $sql.= "cp int NOT NULL,";
     $sql.= "qp int NOT NULL,";
     $sql.= "ep int NOT NULL,";
     $sql.= "primary key (id_user,id_mat,id_per))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Boletas\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Boletas\"</b>: ".mysql_error();}



     $sql= "CREATE TABLE grupos(";
     $sql.= "id INT NOT NULL AUTO_INCREMENT,";
     $sql.= "id_per INT NOT NULL,";
     $sql.= "nombre varchar(8) not null,";
     $sql.= "drescrip varchar(150)null,";
     $sql.= "nivel varchar(1) not null,";
     $sql.= "categoria varchar(12) not null,";
     $sql.= "capacidad int NOT NULL,";
     $sql.= "primary key (id,id_per))";
		 if(@mysql_db_query($basedd,$sql,$link)){
         echo "<br><span class='vineta'></span>Se creo la Tabla <b>\"Grupos\"</b>";
         } else { echo "<br><span class='vineno'></span>No se puede crear la Tabla <b>\"Grupos\"</b>: ".mysql_error();}




}else{echo "<br><span class='vineno'></span>La Base de Datos <b>\"".$basedd."\"</b>, no se puede duplicar, ya existe";}

}

mysql_close($link);

echo "<br /><br /></div>
          <span class='bottom'><span></span></span>
      </div>
  </center>";
} else{

if($_GET['mode']=="delete"){


echo "  <center>
     <div class='round' align='left'>
             <div class='title'>Confirmar
             <hr style='border: 1px solid #339933; height: 1px;' />
             </div>
         <div class='contenidob'>

     <FORM ACTION='call_frmCrear.php?confirmed=si' method = 'POST'>
<table width='300' border='0' cellpadding='1' cellspacing='5' bgcolor='#99CC33'>
  <tr align='center'>
    <td class='text' bgcolor='#FFFF99' style='color:black;'><b>Clave: </b>
    <input class='fill' type='password' name='pw' size=10></td><td>
    <input id='miBotonNorm' type='submit' value='aceptar' name='del'></td>
  </tr>
</table>
</form>

     <br />
          </div>
      </div>
  </center>";
} else{


  if($_GET['confirmed']=="si"){
echo "  <center>
     <div class='round' align='left'>
             <div class='title'>Información
             <hr style='border: 1px solid #339933; height: 1px;' />
             </div>
         <div class='contenidob'>";
$pw=$_POST['pw'];

  if($link==false){
      echo "<b>>> </b>Error: no se pudo conectar con MySql...<br />Intentelo nuevamente";
      exit; }
  else{
if($pw=='no la sabes'){
echo "<br /><span class='vineta'></span>La contrase&ntilde;a es Valida...";

   echo "<br /><span class='vineta'></span>Se establecio conexion con el servidor de MySql...";


	 $sql="use ".$basedd;
	      if(@mysql_query($sql,$link)){

				if(@mysql_query("Drop database ".$basedd,$link)){
				echo "<br /><span class='vineta'></span>La Base de Datos <b>\"".$basedd."\"</b>, ha sido eliminada";}

				}else{
				echo "<br /><span class='vineno'></span>La Base de Datos <b>\"".$basedd."\"</b>, no se encuentra, ya ha sido eliminada";
				}

		}else{echo "<br /><span class='vineno'></span>La contrase&ntilde;a es Incorrecta, vuelva a intentarlo";}

	}
mysql_close($link);
echo "<br /><br /></div>
      </div>
  </center>";}
}

}
 }else{ ?>
  <p>&nbsp;</p>
  <a href="index.php" class="linkpag">Usted es un usuario no autorizado, para realizar estas operaciones... </a>
    <br/>
    <br/>

<?php exit();}?>


