
		<script type="text/javascript">
        function redimensionar(){
          var obj = document.getElementById('divc');
              //alert (obj.offsetHeight);
				$('.example_1 ul').promptumenu({
					'width': obj.offsetWidth,// - (obj.offsetWidth/6),//screen.width/2,
					'height': obj.offsetHeight,//screen.height/2,
					'columns': 2,
					'rows': 3,
					'pages': true
				});
        }
			$(function(){
			  var obj = document.getElementById('divc');
              //alert (obj.offsetHeight);
				$('.example_1 ul').promptumenu({
					'width': obj.offsetWidth,// - (obj.offsetWidth/6),//screen.width/2,
					'height': obj.offsetHeight,//screen.height/2,
					'columns': 3,
					'rows': 3,
					'pages': true
				});

				$('.example_2 ul').promptumenu({
					'width': 200,
					'height': 200,
					'direction': 'vertical',
					'rows': 2,
					'columns': 2,
					'pages': false,
					'inertia': 300
				});

				$('.example_3 ul').promptumenu({
					'width': 500,
					'height': 500,
					'rows': 3,
					'columns': 3,
					'direction': 'horizontal',
					'pages': true
				});
			});

		</script>

		<style type="text/css">


			.example_1{
				display: block;
				margin: 0px;
				padding: 0px 16px 164px 16px;
				border: none;
				width: auto;
				height: 300px;
			   	/*background: url(http://natrixnatrix89.net/promptumenu/htc_dream.png) no-repeat 0 0; */
			}
			.example_1 .promptumenu_window{
				margin:0;
				border:none;
				border-radius: 0;
				-webkit-border-radius: 0;
				background: transparent none;
			}
.pic {
transition: all .2s ease-in-out;
filter: gray; /* IE6-9 */
width: 80px;
-webkit-filter: grayscale(100%); /* Chrome 19+ & Safari 6+ */
}

.pic:hover { transform: scale(1.5)
rotate(45deg);
filter: none;
-webkit-filter: grayscale(0%);
}

		</style>
      <div class="round" align="left">

             <div class="title">Bienvenido
             <hr style="border: 1px solid #339933; height: 1px;" />
             </div>
         <div class="contenidob" id ="divc">
           		<div class="example_1">
				<ul>

                <?
                $sql = "CALL spr_getModulos('".$_GET["idM"]."');"; //"SELECT * FROM tbl_usuarios where vPassword='".$_POST['pass']."' and vUsuario='".$_POST['user']."'";
                $result = mysql_query($sql, $link);
                while($row = mysql_fetch_row($result)) {
                   echo "<li> <center><a href='call_frmWelcome.php?idM=".$row[0]."'><img class='pic' src='".($row[4] == "" ? "img/D6.png" : $row[4])."' alt='".$row[2]."' title='".$row[5]."' /><br />".$row[2]."</a></center></li> "; }
                ?>
				   <!--	<li> <a href="http://www.google.com"><img class="pic" src="http://natrixnatrix89.net/72PNG/Books.png" alt="" title="auqi" /></a></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Browser.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Calculator.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Calendar.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Camera.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Clock.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Contacts.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Gallery.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/GMail.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Mail.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Maps.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Market.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Movie Studio.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Music.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Phone.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Settings.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/Talk.png" alt="" /></li>
					<li><img class="pic" src="http://natrixnatrix89.net/72PNG/YouTube.png" alt="" /></li>-->
				</ul>
			</div>


<!--        <input id="sexh" name="sexo" class="radio" type="checkbox" checked="checked" value="H" />
        <label class="choice" style="display:inline;" for="sexh" title="Hombre">H</label>
        <input id="sexm" name="sexo" class="radio" type="radio" value="M" />
        <label class="choice" style="display:inline;" for="sexm" title="Mujer">M</label>-->
             <?

/*echo "Estas logueado...
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;eefe
";  */

 ?>
         <br /> <br />
          </div>

      </div>

      <br><br>

