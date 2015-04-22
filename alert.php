<div style="width:320px;">
<h1><?=$_POST['msj']; ?></h1>
<form action="javascript: <?=$_POST['metodo']."($_POST[id]);"; ?>" method="post" id="frm_del">
    <table class="formulario" border="0" width="100%" cellpadding="0" cellspacing="0">
        <tbody>

            <tr align="center">
                <td>
                    <input name="agregar" type="submit" id="miBoton" value="Eliminar" /></td><td>
                    <input name="cancelar" type="button" id="miBotonNorm" value="Cancelar" onclick="<?=$_POST['close']; ?>" />
                </td>
            </tr>
        </tbody>
    </table>
</form></div>
