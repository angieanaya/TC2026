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

function consultar($Titulo="", $idAutor="", $idGenero=""){
  $conexion_db = conectDB();
  
  $resultado =  "<table><thead><tr><th>Título</th><th>Autor</th><th>Género</th></tr></thead>";
    
  $consulta = 'Select Titulo, idGenero, idAutor From Libros';
  
  if ($Titulo != "") {
        $consulta .= " AND titulo=".$Titulo;
  }
  
  if ($idGenero != "") {
        $consulta .= " AND idGenero=".$idGenero;
  }

  if ($idAutor != "") {
        $consulta .= " AND idAutor=".$idAutor;
  }
      
  $resultados = $conexion_db->query($consulta);  
  while ($row = mysqli_fetch_array($resultados, MYSQLI_BOTH)) {
        $resultado .= "<tr>";
        $resultado .= "<td>".$row['Titulo']."</td>"; //Se puede usar el índice de la consulta
        $resultado .= "<td>".$row['idAutor']."</td>"; //o el nombre de la columna
        $resultado .= "<td>".$row['idGenero']."</td>";
        $resultado .= "</tr>";
  }
    
  mysqli_free_result($resultados); //Liberar la memoria

  closeDB($conexion_db);

        
  $resultado .= "</tbody></table>";
  return $resultado;
}
//Crea un select con los datos de una consulta
  //@param $id: Campo en una tabla que contiene el id
  //@param $columna_descripcion: Columna de una tabla con una descripción
  //@param $tabla: La tabla a consultar en la bd
  function crear_select($id, $columna_descripcion, $tabla) {
    $conexion_bd = conectDB();  
      
    $resultado = '<div class="input-field"><select name="'.$tabla.'"><option value="" disabled selected>Selecciona una opción</option>';
            
    $consulta = "SELECT $id as id , $columna_descripcion as colum FROM $tabla";
    $resultados = $conexion_bd->query($consulta);
    while ($row = mysqli_fetch_array($resultados, MYSQLI_BOTH)) {
       $resultado .= '<option value="'.$row["id"].'">'.$row["colum"].'</option>';
    }
        
    closeDB($conexion_bd);
    $resultado .=  '</select><label>'.$tabla.'...</label></div>';
    return $resultado;
  }
?>

