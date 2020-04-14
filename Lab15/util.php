<?php

//Función para conectarnos a la base de datos
function conectDB(){
  $conexion_db = mysqli_connect("localhost","root","","LAB14");
      if ($conexion_db == NULL) {
          die("No se pudo conectar con la base de datos");
      }
      return $conexion_db;
}

//Función para desconectarnos de la base de datos
function closeDB($conexion_db){
   mysqli_close($conexion_db);
}

//Depliega todos los libros existentes con el autor y género correspondiente

function consultar($Autores="", $Generos=""){
  $conexion_db = conectDB();
  
  $resultado =  "<center><table><thead><tr><th>Título</th><th>Autor</th><th>Género</th></tr></thead>";
    
  $consulta = 'Select ISBN, Titulo, A.Nombre as autorNom, G.Nombre as generoNom From Libros as L, Autores as A, Generos as G Where L.idGenero = G.idGenero AND L.idAutor = A.idAutor';
  
  if ($Autores != "") {
        $consulta .= " AND A.idAutor=".$Autores;
  }

  if ($Generos != "") {
        $consulta .= " AND G.idGenero=".$Generos;
  }

  //echo $consulta;

  $resultados = $conexion_db->query($consulta); 
  $resultado .= "<br>"; 
  while ($row = mysqli_fetch_array($resultados, MYSQLI_ASSOC)){
        $resultado .= "<tr>";
        $resultado .= "<td>".$row['Titulo']."</td>"; //Se puede usar el índice de la consulta
        $resultado .= "<td>".$row['autorNom']."</td>"; //o el nombre de la columna
        $resultado .= "<td>".$row['generoNom']."</td>";
        $resultado .= "<td><a class='btn' href='control_editar_libro.php?ISBN=".$row['ISBN']."' role='button'>";
        $resultado .= "<span class='material-icons'>MOD</span></a>";
        //esta fecha es para el id del modal de borrar
        $tituloModal =  str_replace(' ', '', $row['Titulo']);
        $resultado .= "<button type='button' class='btn' data-toggle='modal' data-target='#".$tituloModal."'>";
        $resultado .= "<span class='material-icons'>DEL</span></button>";
        include("eliminar.html");
        $resultado .= "</tr>";
  }

  mysqli_free_result($resultados); //Liberar la memoria

  closeDB($conexion_db);

  $resultado .= "</tbody></table></center><br>";
  return $resultado;
}

//Crea un select con los datos de una consulta
  //@param $id: Campo en una tabla que contiene el id
  //@param $columna_descripcion: Columna de una tabla con una descripción
  //@param $tabla: La tabla a consultar en la bd

  function crear_select($id, $columna_descripcion, $tabla, $required, $selected=0) {
    $conexion_bd = conectDB(); 
    
    $resultado = '<div class="custom-select"><select name="'.$tabla.'"><option value="" disabled selected>SELECCIONA UNA OPCIÓN</option>';

    if($required)
    {
      $resultado .= "required";
    }
    $resultado .= "><option value='' disabled selected>Selecciona una opción</option>";
       
    $consulta = "SELECT $id, $columna_descripcion FROM $tabla";
    $resultados = $conexion_bd->query($consulta);
    while ($row = mysqli_fetch_array($resultados, MYSQLI_BOTH)) {
      $resultado .= '<option value="'.$row["$id"].'" ';
      if($selected === $row["$id"])
      {
        $resultado .= "selected";
      }
      $resultado .= ">".$row["$columna_descripcion"]."</option>";
    }

    $resultado .=  '</select><label></label></div><br>';
        
    closeDB($conexion_bd);
    $resultado .= "</select><br/>";
    return $resultado;
  }

  //Función para ingresar un registro de un libro nuevo 

  function insertarLibro($ISBN, $Titulo, $idGenero, $idAutor){
    $conexion_bd = conectDB();

    //Preparar consulta

    $registrar = 'INSERT INTO Libros(ISBN,Titulo,idGenero,idAutor) VALUES(?, ?, ?, ?)';

    if ( !($statement = $conexion_bd->prepare($registrar))) {
      die("Error: (" . $conexion_bd->errno . ") " . $conexion_bd->error);
      return 0;
    }

    //Unir los parámetros
    if (!$statement->bind_param("isii", $ISBN, $Titulo, $idGenero, $idAutor)){
      die("Error en vinculación: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }
  

    //Ejecutar el registro del libro
    if (!$statement->execute()) {
      die("Error en ejecución: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }

    closeDB($conexion_bd);
    return 1;
  }

  //Obtener el campo a modificar 

  function obtenerCampo($ISBN, $campo){
    $conexion_bd = conectDB();

    $consultar = "SELECT $campo FROM Libros WHERE ISBN='$ISBN'";
    $resultados = $conexion_bd->query($consultar);
    while ($row = mysqli_fetch_array($resultados, MYSQLI_BOTH)) {
      closeDB($conexion_bd);
      return $row["$campo"];
    }

    closeDB($conexion_bd);
    return 0;
  }

  //Función para modificar los datos ingresados de un libro

  function modificarLibro($ISBN, $Titulo, $idGenero, $idAutor){
    $conexion_bd = conectDB();

    //Preparar la consulta
    $modificar = 'UPDATE Libros SET Titulo=(?), idGenero=(?), idAutor=(?) WHERE ISBN=(?)';

    if ( !($statement = $conexion_bd->prepare($modificar))) {
      die("Error: (" . $conexion_bd->errno . ") " . $conexion_bd->error);
      return 0;
    }

    //Unir parámetros de consulta 
    if (!$statement->bind_param("siii", $Titulo, $idGenero, $idAutor, $ISBN)) {
      die("Error en vinculación: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }

    //Ejecutar consulta 
    if (!$statement->execute()) {
      die("Error en ejecución: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }

    closeDB($conexion_bd);
    return 1;
  }

  //Eliminar un libro 

  function eliminarLibro($ISBN, $Titulo, $idGenero, $idAutor){
    $conexion_bd = conectDB();

    //Preparar la consulta
    $eliminar = 'DELETE FROM Libros WHERE ISBN=(?) AND Titulo=(?) AND idGenero=(?) AND idAutor=(?)';
    if ( !($statement = $conexion_bd->prepare($eliminar)) ) {
      die("Error: (" . $conexion_bd->errno . ") " . $conexion_bd->error);
      return 0;
    }
      
    //Unir los parámetros de consulta
    if (!$statement->bind_param("isii", $ISBN, $Titulo, $idGenero, $idAutor)) {
      die("Error en vinculación: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }
      
    //Ejecutar la consulta
    if (!$statement->execute()) {
      die("Error en ejecución: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }

    closeDB($conexion_bd);
    return 1;
  }
?>

