<?php 
  session_start();
  require_once("util.php");  

  $ISBN = htmlspecialchars($_POST["isbn"]);
  $Titulo = htmlspecialchars($_POST["titulo"]);
  $Autores = htmlspecialchars($_POST["Autores"]);
  $Generos = htmlspecialchars($_POST["Generos"]);
  
  
  if(isset($ISBN) && isset($Titulo) && isset($idGenero) && isset($idAutor))
  	{
		if(eliminarLibro($ISBN, $Titulo, $idGenero, $idAutor))
		{
			$_SESSION["mensajeExito"] = "Se eliminó el libro de manera exitosa!";
		}
		else
		{
			$_SESSION["mensajeError"] = "Hubo un error al eliminar el libro seleccionado!";
		}
	}

	header("location:index.php");
?>