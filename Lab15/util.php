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
    
  $consulta = 'Select Titulo, A.Nombre as autorNom, G.Nombre as generoNom From Libros as L, Autores as A, Generos as G Where L.idGenero = G.idGenero AND L.idAutor = A.idAutor';
  
  if ($Autores != "") {
        $consulta .= " AND A.idAutor=".$Autores;
  }

  if ($Generos != "") {
        $consulta .= " AND G.idGenero=".$Generos;
  }

  //echo $consulta;

      
  $resultados = $conexion_db->query($consulta);  
  while ($row = mysqli_fetch_array($resultados, MYSQLI_ASSOC)){
        $resultado .= "<tr>";
        $resultado .= "<td>".$row['Titulo']."</td>"; //Se puede usar el índice de la consulta
        $resultado .= "<td>".$row['autorNom']."</td>"; //o el nombre de la columna
        $resultado .= "<td>".$row['generoNom']."</td>";
        $resultado .= "</tr>";
  }
    
  mysqli_free_result($resultados); //Liberar la memoria

  closeDB($conexion_db);

        
  $resultado .= "</tbody></table></center>";
  return $resultado;
}


//Crea un select con los datos de una consulta
  //@param $id: Campo en una tabla que contiene el id
  //@param $columna_descripcion: Columna de una tabla con una descripción
  //@param $tabla: La tabla a consultar en la bd

  function crear_select($id, $columna_descripcion, $tabla) {
    $conexion_bd = conectDB(); 
    
    $resultado = '<div class="custom-select"><select name="'.$tabla.'"><option value="" disabled selected>SELECCIONA UNA OPCIÓN</option>';
            
    $consulta = "SELECT $id, $columna_descripcion FROM $tabla";
    $resultados = $conexion_bd->query($consulta);
    while ($row = mysqli_fetch_array($resultados, MYSQLI_BOTH)) {
       $resultado .= '<option value="'.$row["$id"].'">'.$row["$columna_descripcion"].'</option>';
    }

    $resultado .=  '</select><label></label></div><br>';
        
    closeDB($conexion_bd);
    
    return $resultado;
  }

  //Función para ingresar un registro de un libro nuevo 

  function insertarLibro($ISBN, $Titulo, $idGenero, $idAutor){
    $conexion_bd = conectDB();

    $registro = 'INSERT INTO Libros(ISBN,Titulo,idGenero,idAutor) VALUES(?)';
    echo $registro;

    if ( !($statement = $conexion_bd->prepare($registro)) ) {
      die("Error: (" . $conexion_bd->errno . ") " . $conexion_bd->error);
      return 0;
    }

    //Unir los parámetros
    if (!$statement->bind_param("i", $ISBN)) {
      die("Error en vinculación: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }
    if (!$statement->bind_param("s", $Titulo)) {
      die("Error en vinculación: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }
    if (!$statement->bind_param("i", $idAutor)) {
      die("Error en vinculación: (" . $statement->errno . ") " . 
        $statement->error);
      return 0;
    }
    if (!$statement->bind_param("i", $idGenero)) {
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