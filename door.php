<?php

session_unset();
session_start();
 include("keyaccess.php");

if($_POST['user']=="database" and $_POST['pass']=="create"){
                    $_SESSION['access']="si";
                    $_SESSION['nombre']=$_POST['user'];
                    $_SESSION['pass']=$_POST['pass'];
                    $_SESSION['id']="1";
                    //require('crear.php');
                     header("Location: call_frmCrear.php");
                    }

else{
                //if($link){$sql="use ".$basedd;
                if(!empty($_POST['user']) or !empty($_POST['pass'])){
                //mysql_select_db($basedd,$link);
                //$subcadena=substr($row["mensaje"], 0, 50);

                /*if($_POST['open']==2){ */
                $sql = "CALL spr_getUsuario('".$_POST['user']."','".$_POST['pass']."');"; //"SELECT * FROM tbl_usuarios where vPassword='".$_POST['pass']."' and vUsuario='".$_POST['user']."'";
                /*}else{
                $sql = "SELECT * FROM users where pass='".$_POST['pass']."' and nick='".$_POST['user']."' and cuenta='Alumno'";
                if(mysql_num_rows(mysql_query($sql))==0){$cuenta="Padre";
                    $sql = "SELECT * FROM users as u, solicitud as s where s.pass2='".$_POST['pass']."' and u.nick='".$_POST['user']."' and u.cuenta='Alumno'";
                }else{$cuenta="Alumno";}
                } */

                $result = mysql_query($sql, $link);
                  if ($row = @mysql_fetch_array($result)){
                    $_SESSION['access'] = "si";
                    $_SESSION['nick'] = $row['vUsuario'];
                    $_SESSION['id'] = $row['idUsuario'];//$_POST['pass'];
                    $_SESSION['foto'] = $row['foto'] == "" ? "img/D6.png" :$row['foto'];
                    $_SESSION['cuenta'] = $row['vRol'] == "" ? "Desconocido" : $row['vRol'];
                    $_SESSION['nombre'] = $row['vNombre']." ".$row['apep']." ".$row['apem'];
                  header("Location: call_frmWelcome.php");
				  //require('menu.php');
                  }
                  else{
                    $msg = "vacios";
                  header("Location: call_login.php?msg=Usuario o Contraseña Incorrecto");
                    exit;
                                    //require('index.php');
                                   }
                //} mysql_close($link);
                }

else{
                 // header("Location: ../index.htm");
                                $msg = "vacios";
				  header("Location: call_login.php");

                    exit;
}
}

 ?>


