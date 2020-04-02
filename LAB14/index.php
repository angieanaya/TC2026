<?php
require_once("util.php");

include("header.html"); 
include("body.html"); 

/*if (isset($_POST["idGenero"])) {
      $idGenero = htmlspecialchars($_POST["idGenero"]);
  } else {
      $idGenero = "";
  }

 if (isset($_POST["idAutor"])) {
      $idAutor = htmlspecialchars($_POST["idAutor"]);
  } else {
      $idAutor = "";
}*/

echo consultar("","","");

include("preguntas.html"); 
include("footer.html"); 
?>