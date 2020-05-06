<?php
  session_start();
  require_once("util.php");

  var_dump($_POST);
  $lugares = htmlspecialchars($_POST['lugares']);
  $tipos = htmlspecialchars($_POST['tipos']);

  if(isset($_POST['lugares']) && isset($_POST['tipos']))
    {
    if(insertarIncidente($lugares, $tipos))
    {
      $_SESSION["mensajeExito"] = "Se agrego el incidente a la base de datos!";
    }
    else
    {
      $_SESSION["mensajeError"] = "Hubo un error al intentar agregar un incidente!";
    }
  }

  header("location:index.php");
?>