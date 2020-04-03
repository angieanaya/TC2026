<?php 
  
  session_start();
  require_once("util.php");  

  $_POST["idGenero"] = htmlspecialchars($_POST["idGenero"]);

  if(isset($_POST["idGenero"])) {
            if (insertarLibro($_POST["idGenero"])) {
          $_SESSION["mensaje"] = "Se registró el caso";
      } else {
          $_SESSION["warning"] = "Ocurrió un error al registrar el caso";
      }
  }

  header("location:index.php");
?>