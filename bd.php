        <script language="javascript" type="text/javascript" src="extras/js/jquery.blockUI.js"></script>

        <link href="extras/css/estilo.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript">
function fn_dump(){
	$("#div_ocultobd").load("dump.php", function(){
		$.blockUI({
			message: $('#div_ocultobd'),
			css:{
				top: '100px',
                left: '50%',
                'margin-left': '-325px'
			}
		});
	});
};
function fn_restore(){
	$("#div_ocultobd").load("restore.php", function(){
		$.blockUI({
			message: $('#div_ocultobd'),
			css:{
				top: '100px',
                left: '50%',
                'margin-left': '-325px'
			}
		});
	});
};
</script>

<style>
.ground:hover{
    -moz-transition: all 0.3s ease-in;
  -webkit-transition: all 0.3s ease-in;
  -o-transition: all 0.3s ease-in;
  transition: all 0.3s ease-in;
      -webkit-border-radius:3px;
    -moz-border-radius:3px;
    border-radius:3px;
border: #0099CC solid 2px;
}
.ground{
border: #FFFFFF solid 2px;
}


</style>

   	<div id="cuerpo">
            <p></p>
            <form id="bd" name="frm_bd">
                <table class="formulario" border="0" width="90%">
                    <tbody>
                        <tr>
            <td align="center"><label for="dump"><b>Respaldar Base de Datos</b></label></td>
            <td align="center"><label for="restore"><b>Restaurar Base de Datos</b></label></td>
                        </tr>
                        <tr>
            <td align="center"><a id="dump" href="javascript: fn_dump();"><img  class="ground" title="Rspaldar la Base de Datos" src="ico/bddum.png" /></a></td>
            <td align="center"><a id="restore" href="javascript: fn_restore();"><img class="ground" title="Restaurar la Base de Datos" src="ico/bdres.png" /></a></td>
                        </tr>
                    </tbody>
                </table>
            </form>


        </div>
                 <div id="div_ocultobd" style="display: none; "></div>