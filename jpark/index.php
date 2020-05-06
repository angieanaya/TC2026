<?php
  session_start();
  require_once("util.php");

  $titulo="WELCOME TO JURASSIC PARK";
  include("header.html");
  include("retro.html");
  include("consultar.html"); 

	if (isset($_POST["lugares"])) {
	      $lugares = htmlspecialchars($_POST["lugares"]);
	  } else {
	      $lugares = "";
	}

	if (isset($_POST["tipos"])) {
	      $tipos = htmlspecialchars($_POST["tipos"]);
	  } else {
	      $tipos = "";
	}

	echo '<div id="resultados_consulta">';
	echo consultar($lugares,$tipos);
	echo '</div>';

  include("footer.html"); 
?>