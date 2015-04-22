<?php

//Prefedined Variables
$to = "informacion@ciatech.com.mx";
$subject = "Ciatech - Casino.";
if(isset($_POST['name'])) {
         //echo $copy;
        $b1=$_POST['name'];
        $b2=$_POST['email'];
        $b3=$_POST['tel'];
        $b5=$_POST['comment'];
        $sheader="From:".$b2."\nReply-To:".$b2;
        //$asunto="Nombre: ".$b1."\nCorreo: ".$b2."\n\nMensaje:".$b5;
        $asunto = date('d/m/Y')."\n" . $name . " (" . $b2 . ") envió el siguiente comentario:\n" . $b5;

        $cabeceras = 'From: ' . $b2." \r\n" .
        'Reply-To: ' . $b2. "\r\n" .
        'X-Mailer: PHP/' . phpversion();

         if( mail($to,$subject,$asunto,$cabeceras) ){echo "Su correo ha sido enviado Correctamente, espere pronto una respuesta";}
        else{echo "Lo sentimos, al parecer su correo no se pudo enviar en este momento por favor intentelo más tarde...";}
}
?>