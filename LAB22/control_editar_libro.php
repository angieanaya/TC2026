<?php 
  session_start();
  require_once("util.php");  

  $ISBN = htmlspecialchars($_GET["ISBN"]);

  include("header.html");

  $Titulo = obtenerCampo($ISBN, "Titulo");
  $idGenero = obtenerCampo($ISBN, "idGenero");
  $idAutor = obtenerCampo($ISBN, "idAutor");
  $editar = 1;

  include("registration.html"); 

  include("footer.html"); 
?>