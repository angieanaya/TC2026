<?php 
  session_start();
  require_once("util.php");  

  $ISBN = htmlspecialchars($_GET["ISBN"]);
  $Titulo = obtenerCampo($ISBN, "Titulo");
  $idAutor = obtenerCampo($ISBN, "idAutor");
  $idGenero = obtenerCampo($ISBN, "idGenero");
  
  
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