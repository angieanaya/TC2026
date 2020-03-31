<?php
//Función para conectarnos a la base de datos
function conectDB(){
  $conexion_db = mysqli_connect("localhost","root","","LAB14");
      if ($conexion_fb == NULL) {
          die("No se pudo conectar con la base de datos");
      }
      return $conexion_db;
}

//Función para desconectarnos de la base de datos
function closeDB($conexion_db){
   mysqli_close($conexion_db);
}

/*function consultarLibros(){
  $conexion_db = conectDB();

  closeDB($conexion_db);
}*/
?>

