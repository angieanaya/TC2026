<?php
  session_start();
  require_once("util.php");

  $ISBN = htmlspecialchars($_POST["ISBN"]);
  $Titulo = htmlspecialchars($_POST["Titulo"]);
  $Generos = htmlspecialchars($_POST["Generos"]);
  $Autores = htmlspecialchars($_POST["Autores"]);

  if(isset($ISBN) && isset($Titulo) && isset($Generos) && isset($Autores))
  {
    if(insertarLibro($ISBN, $Titulo, $Generos, $Autores))
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