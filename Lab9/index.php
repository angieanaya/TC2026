<?php 
include("header.html");
$a = array(10, 8.5, 9, 9, 9);
$n = 7;
?>

<h3>Función 1</h3>
<p>Recibe un arreglo de números y devuelve el promedio.</p>
<?= promedio($a)?>
<h3>Función 2</h3>
<p>Recibe un arreglo de números y devuelve la mediana.</p>
<?= mediana($a)?>
<h3>Función 3</h3>
<p>Recibe un arreglo de números y los muestra, además de desplegar el promedio, la mediana y el arreglo ordenado de mayor a menor y al contrario como items de una lista html.</p>
<ul>
  <li>
    <?=lista($a)?>
  </li>
  <li>
    <?=promedio($a)?>
  </li>
  <li>
    <?=mediana($a)?>
  </li>
  <li>
    <?=menorMayor($a)?>
  </li>
  <li>
    <?=mayorMenor($a)?>
  </li>
</ul>
<h3>Función 4</h3>
<p>Recibe un número 'n' e imprime una tabla con los cuadrados y cubos hasta ese mismo.</p>
<table>
  <tr><?=cuadrados($n)?></tr>
  <tr><?=cubos($n)?></tr>    
</table>

<h3>Función 5</h3>
<p>Problema libre donde se le de solución en php y con una vista agradable para el usuario.</p>
<h2>Conversor de millas a kilómetros</h2>


<?php 
/*Calcula el promedio de un arreglo*/
function promedio($a){
  echo "Promedio = " . (array_sum($a)/count($a)) . "\n";
} 

/*Calcula la mediana de un arreglo*/
function mediana($a){
  $y = sort($a);
  $count = count($a);
  $mid = floor(($count-1)/2);
  if($count % 2) {
    $median = $a[$mid];
  } else {
    $low = $a[$mid];
    $high = $a[$mid+1];
    $median = (($low+$high)/2);
  }
  echo "Mediana = " .$median;
}

/*Despliega elementos de un arreglo*/
function lista($a){
  foreach ($a as $clave => $valor) {
    echo "" . $valor . "\n";
  }
}
/*Arreglo de menor a mayor*/
function menorMayor($a){
  $y = sort($a);
  echo "Mayor a menor: ";
  foreach ($a as $clave => $valor) {
    echo "" . $valor . "\n";
  }
}

/*Arreglo de mayor a menor*/
function mayorMenor($a){
  $x = rsort($a);
  echo "Menor a mayor: ";
  foreach ($a as $clave => $valor) {
      echo "" . $valor . "\n";
  }
}

/*Calcula cuadrados hasta n*/
function cuadrados($n){
  echo "<th>CUADRADOS: </th>";
	for($x=1;$x<=$n;$x++){
    	 echo "<td>" . (pow($x, 2)) . "</td>"; 
    }
}

/*Calcula cubos hasta n*/
function cubos($n){
  echo "<th>CUBOS: </th>";
	for($x=1;$x<=$n;$x++){
    	 echo "<td>" . (pow($x,3)) . "</td>"; 
    }
}

/*PROBLEMA LIBRE*/
include("conversor.html");
  $miles = $_GET['miles'];
  $kilometers = $miles*(1.60934);
  echo $miles . " MILLAS SON EQUIVALENTES A ".$kilometers . " KILÓMETROS";

include("questions.html");
include("footer.html");
?> 