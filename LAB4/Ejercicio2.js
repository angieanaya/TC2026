function aleatorio(min, max){
    var numPos = max - min;
    var al = Math.random() * numPos;
    al = Math.round(al);
    return parseInt(min) + al;
}



function sumatoria(){
	var n1 = aleatorio(1, 100);
	var n2 = aleatorio(1, 100);
	var sum = n1 + n2;

	var inicio = Date.now();

	var answer = prompt("¿Cuánto es la suma de " + n1 + " + " + n2 + " ?");
	var final = Date.now();

	if(sum == answer){
    	var tiempoResp = (final-inicio)/1000;
    	alert("La respuesta es correcta \n" + "Tiempo de respuesta: " + tiempoResp + " segundos");
	} else{
    	var tiempoResp = (final-inicio)/1000;
  		alert("La respuesta es incorrecta \n" + "Tiempo de respuesta: " + tiempoResp + " segundos");
}
}