<?php
	session_start();
	require_once("util.php");

  $ISBN = htmlspecialchars($_POST["isbn"]);
  $Titulo = htmlspecialchars($_POST["titulo"]);
  $Autores = htmlspecialchars($_POST["Autores"]);
  $Generos = htmlspecialchars($_POST["Generos"]);

	if(isset($ISBN) && isset($Titulo) && isset($idGenero) && isset($idAutor))
  	{
		if(modificarLibro($ISBN, $Titulo, $idGenero, $idAutor))
		{
			$_SESSION["mensajeExito"] = "Se modificaron los datos del libro!";
		}
		else
		{
			$_SESSION["mensajeError"] = "Hubo un error al modificar los datos del libro!";
		}
	}

	header("location:index.php");
?>