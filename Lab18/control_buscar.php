<?php
session_start();

require_once("util.php");

$Autores = htmlspecialchars($_GET["Autores"]);
$Generos = htmlspecialchars($_GET["Generos"]);

echo consultar($Autores,$Generos);
?>