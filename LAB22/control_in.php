<?php
  session_start();
  require_once("util.php");

  $Titulo = htmlspecialchars($_POST["Titulo"]);
  $Generos = htmlspecialchars($_POST["Generos"]);
  $Autores = htmlspecialchars($_POST["Autores"]);

  if(isset($Titulo) && isset($Generos) && isset($Autores))
  {
    if(insertarLibro($Titulo, $Generos, $Autores))
    {
      $_SESSION["mensajeExito"] = "Registro de libro exitoso!";
    }
    else
    {
      $_SESSION["mensajeError"] = "Hubo un error al registrar el libro!";
    }
  }

  header("location:index.php");
?>