<?php 
  require_once("util.php");

  if ( !(isset($_POST["uname"]) && isset($_POST["psw"]))) {
    die();
  }

  $psw = htmlspecialchars($_POST["psw"]);
  $uname = htmlspecialchars($_POST["uname"]);

  matchUser($uname, $psw);
?> 