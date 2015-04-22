	<!-- Begin Stylesheets -->
		<link rel="stylesheet" href="coda-slider-2.0.css" type="text/css" media="screen" />

	<!-- Begin JavaScript -->
		<script type="text/javascript" src="lib/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="lib/jquery.coda-slider-2.0.js"></script>

<script type="text/javascript">
$().ready(function() {
    $('#coda-slider-1').codaSlider({
    dynamicArrows: false,
    dynamicTabs: false
    });
});

</script>
	<!-- End JavaScript -->

<div class="coda-slider-wrapper">

<div id="coda-nav-1" class="coda-nav">
<ul>
<?  if(browser()=='IE'){$ban=true;}else{$ban=false;} ?>
<? if($row['cuenta']=="Administrador"){ ?>
<li class="tab1"><a href="#1" class="button amarillo" onclick="javascript: fn_buscar();"><? if(!$ban){echo"<img src='secre.png'/>";}else{echo"<img src='secre.png' width='40px'/>";} ?> Administrativos</a></li> <? } ?>
<li class="tab2"><a href="#2" class="button amarillo" onclick="javascript: fn_busmast();"><? if(!$ban){echo"<img src='master.png'/>";}else{echo"<img src='master.png' width='40px'/>";} ?> Docentes</a></li>
<li class="tab3"><a href="#3" class="button amarillo" onclick="javascript: fn_busalum();"><? if(!$ban){echo"<img src='alumno.png'/>";}else{echo"<img src='alumno.png' width='40px'/>";} ?> Alumnos</a></li>
</ul>
</div>

	<div class="coda-slider preload" id="coda-slider-1">
		<? if($row['cuenta']=="Administrador"){ ?><div class="panel">
			<div class="panel-wrapper">
                <? include("cap_user_admin.php"); ?>
			</div>
		</div><? } ?>
		<div class="panel">
			<div class="panel-wrapper">
                <? include("cap_user_master.php"); ?>
			</div>
		</div>
		<div class="panel">
			<div class="panel-wrapper">
                <?  include("cap_user_alum.php"); ?>
			</div>
		</div>
	</div><!-- .coda-slider -->
</div><!-- .coda-slider-wrapper -->
