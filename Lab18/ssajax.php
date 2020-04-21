<?php
require_once("util.php");

$pattern=htmlspecialchars(strtolower($_GET['pattern']));
$tabla = htmlspecialchars($_GET["tabla"]);
$words = obtenerLibros("Libros", "Titulo");
$ids = obtenerLibros("Libros", "ISBN");

$response = "";
$size = 0;
for($i = 0; $i < count($words); $i++)
{
   $pos=stripos(strtolower($words[$i]),$pattern);
   if(!($pos === false))
   {
     $size++;
     $word = $words[$i];
     $id = $ids[$i];

     $response .= "<option value=\"$id\">$word</option>"; 
   }
}
if($size > 0)
  echo "<select id=\"list\" size=$size onclick=\"selectValue('$tabla')\">$response</select>";
?>
