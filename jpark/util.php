<?php

//FUNCION PARA CONECTARSE A LA BASE DE DATOS
function conectDB(){
  //$conexion_db = mysqli_connect("localhost","root","","jpark");
  $conexion_db = mysqli_connect("mysql1008.mochahost.com","dawbdorg_1700284","1700284","dawbdorg_A01700284");
      if ($conexion_db == NULL) {
          die("No se pudo conectar con la base de datos");
      }
      return $conexion_db;
}

//FUNCION PARA DESCONECTARSE DE LA BASE DE DATOS
function closeDB($conexion_db){
   mysqli_close($conexion_db);
}

//FUNCION PARA CREAR UN SELECT DINAMICO PARA CONSULTAS 
	function crear_selectT($llave, $descripcion, $tabla, $required, $seleccion = 0, $label = "", $busqueda = false)
	{

		$conexion_bd = conectDB();

		//poner el label recibido como parametro o por default el nombre de la tabla
		if($label === "")
			$resultado = "<label  for='".$tabla."'>".$tabla."</label>";
		else
			$resultado = "<label  for='".$tabla."'>".$label."</label>";

		$resultado .= "<div class='input-field'><select id='".$tabla."' name='".$tabla."' ";
		if($required)
		{
			$resultado .= "required";
		}
		$resultado .= "><option value='' ";
		//si el select es para una busqueda no lleva el disabled para poder buscar sin filtro
		if(!$busqueda)
			$resultado .= "disabled";
		$resultado .= " selected>Selecciona una opción</option>";

		$consulta = "SELECT $llave, $descripcion FROM $tabla";
		$resultados = $conexion_bd->query($consulta);
		while($row = mysqli_fetch_array($resultados, MYSQLI_BOTH))
		{
			$resultado .= "<option value='".$row["$llave"]."' ";
			if($seleccion === $row["$llave"])
			{
				$resultado .= "selected";
			}
			$resultado .= ">".$row["$descripcion"]."</option>";
		}

		closeDB($conexion_bd);
		$resultado .= "</select><br/>";

		return $resultado;
	}

//AGREGA UN NUEVO INCIDENTE A LA BASE DE DATOS 
function insertarIncidente($idLugar, $idTipo){
  $conexion_bd = conectDB();

    $agregar = 'CALL creaIncidente(?,?)';

    if ( !($statement = $conexion_bd->prepare($agregar))) {
      die("Error: (" . $conexion_bd->errno . ") " . $conexion_bd->error);
      return 0;
    }

    if (!$statement->bind_param("ii", $idLugar, $idTipo)) {
      die("Error en vinculación: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }

    if (!$statement->execute()) {
      die("Error en ejecución: (" . $statement->errno . ") " . $statement->error);
      return 0;
    }

    closeDB($conexion_bd);
    return 1;
}

//DESPLIEGA EL HISTORIAL DE INCIDENTES DEL MAS RECIENTE AL MAS ANTIGUO
function consultar($lugares="", $tipos=""){
  $conexion_db = conectDB();
  
  $resultado =  "<center><table><thead><tr><th>Lugar</th><th>Tipo</th><th>Fecha</th></tr></thead>";
    
  $consulta = 'SELECT L.nomLugar as nomLugar, T.nomTipo as nomTipo, I.fecha as fecha FROM incidentes as I, lugares as L, tipos as T WHERE I.idLugar=L.idLugar AND I.idTipo=T.idTipo';

  if ($lugares != "") {
        $consulta .= " AND L.idLugar=".$lugares;
  }

  if ($tipos != "") {
        $consulta .= " AND T.idTipo=".$tipos;
  }

  $consulta .= " ORDER BY I.fecha DESC";

  $resultados = $conexion_db->query($consulta); 
  $resultado .= "<br>"; 
  while ($row = mysqli_fetch_array($resultados, MYSQLI_BOTH)){
        $resultado .= "<tr>";
        $resultado .= "<td>".$row['nomLugar']."</td>";
        $resultado .= "<td>".$row['nomTipo']."</td>";
        $resultado .= "<td>".$row['fecha']."</td>";
        $resultado .= "</tr>";
  }

  mysqli_free_result($resultados); //Liberar la memoria

  closeDB($conexion_db);

  $resultado .= "</tbody></table></center><br>";
  return $resultado;
}

?>