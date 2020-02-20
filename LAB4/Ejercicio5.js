function invertir(numero)
{ 
  var numInvertido = 0
  var digitosRest = numero
  do {
    numInvertido = numInvertido * 10 + (digitosRest % 10)
    digitosRest = Math.floor(digitosRest / 10)
  } while ( digitosRest > 0 )
  alert("El número ingresado: " + numero + ", el número invertido: " + numInvertido);
}