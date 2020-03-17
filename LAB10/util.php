<?php 

function matchUser($uname, $psw) {
  if ($uname == "Karla" && $psw == "romero") {
    $avatar = "bombon.jpg";
    $alias = "Bombón";
    $signo = "Aries";
    $edad = "19"; 
  } else if($uname == "Valeria" && $psw == "guerra"){
    $avatar = "burbuja.png";
    $alias = "Burbuja";
    $signo = "Capricornio";
    $edad = "20"; 
  } else if ($uname == "Angie" && $psw == "anaya"){
    $avatar = "bellota.jpg";
    $alias = "Bellota";
    $signo = "Leo";
    $edad = "19"; 
  }else {
    $avatar = "medusa.gif";
    $alias = "Debes permanecer como usuario invitado";
    $signo = "";
    $edad = "";
  }
  include("windowLogin.html");
}
  

?>