<?php
session_start();
$_SESSION["nombreBenef"] = "María López Salinas";
$_SESSION["edad"] = "12";
$_SESSION["edadMental"] = "5";
require_once("php.ini");
include("header.html");
include("body.html");
include("preguntas.html");
include("footer.html");
session_unset();
session_destroy();
?>
