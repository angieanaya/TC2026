<?php
  session_start();
  require_once("util.php");

  $ISBN = htmlspecialchars($_POST["isbn"]);
  $Titulo = htmlspecialchars($_POST["titulo"]);
  $Autores = htmlspecialchars($_POST["Autores"]);
  $Generos = htmlspecialchars($_POST["Generos"]);

  if(isset($ISBN) && isset($Titulo) && isset($idGenero) && isset($idAutor))
  {
    if(insertarLibro($Autores, $Generos, $ISBN, $Titulo))
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