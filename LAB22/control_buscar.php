<?php
session_start();

require_once("util.php");

$Autores = htmlspecialchars($_POST["Autores"]);
$Generos = htmlspecialchars($_POST["Generos"]);

echo consultar($Autores,$Generos);
?>