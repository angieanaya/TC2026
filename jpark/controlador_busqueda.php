<?php
session_start();

require_once("util.php");

$lugares = htmlspecialchars($_POST["lugares"]);
$tipos = htmlspecialchars($_POST["tipos"]);

echo consultar($lugares,$tipos);
?>