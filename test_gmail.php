<?php

include("class.phpmailer.php");
//include("../class.smtp.php"); // optional, gets called from within class.phpmailer.php if not already loaded

$mail = new PHPMailer();

$mail->isMail();//usamos Sendmail, tambi�n podemos usar mail() con isMail()

$mail->FromName = 'Juan Palomo';
$mail->From = 'administrativa@aguilas.org.mx';//email de remitente desde donde se env�a el correo.

$mail->AddAddress('anitajaz13@hotmail.com', 'Destinatario');//destinatario que va a recibir el correo

$mail->AddCC('copia@dominio.com', 'copia');//env�a una copia del correo a la direcci�n especificada

$mail->Subject = 'Asunto de email';

$mail->AltBody = 'cuerpo del mensaje en texto plano';//cuerpo con texto plano

$mail->MsgHTML('Mensaje con HTML');//cuerpo con html

//$mail->AddAttachment("archivo.zip");//adjuntos un archivo al mensaje

if(!$mail->Send()) {//finalmente enviamos el email
   echo $mail->ErrorInfo;//si no se env�a correctamente se muestra el error que ocurri�
} else {
   echo 'Correo enviado correctamente';
}

?>
