<?php
	session_start();
	require_once("util.php");

  $ISBN = htmlspecialchars($_POST["ISBN"]);
  $Titulo = htmlspecialchars($_POST["Titulo"]);
  $Autores = htmlspecialchars($_POST["Autores"]);
  $Generos = htmlspecialchars($_POST["Generos"]);

	if(isset($ISBN) && isset($Titulo) && isset($Autores) && isset($Generos))
  	{
  		echo $ISBN;
  		echo $Titulo;
  		echo $Autores;
  		echo $Generos;

		if(modificarLibro($ISBN, $Titulo, $Generos, $Autores))
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