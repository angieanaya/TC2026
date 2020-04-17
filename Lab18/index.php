<?php

session_start();

require_once("util.php");

include("header.html"); 
include("retro.html");
include("_form.html"); 

if (isset($_POST["Autores"])) {
      $Autores = htmlspecialchars($_POST["Autores"]);
      //echo $_POST["Autores"];
  } else {
      $Autores = "";
}

if (isset($_POST["Generos"])) {
      $Generos = htmlspecialchars($_POST["Generos"]);
      //echo $_POST["Generos"];
  } else {
      $Generos = "";
}

echo '<div id="resultados_consulta">';
echo consultar($Autores,$Generos);
echo '</div>';

include("eliminar.html");
include("preguntas.html"); 
include("footer.html"); 
?>