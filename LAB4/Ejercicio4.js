function promedios(arrayDoble){
  
  var acumArray = 0;
  var acumFilas;
  var numFila = 0; 
  var count = 0;

	for(var i = 0 ; i < arrayDoble.length; i++){
  	acumFilas = 0;
  	for(var j = 0 ; j < 3; j++){
    	acumFilas = acumFilas + arrayDoble[i][j];
  	}
  	acumArray = acumArray + acumFilas;
  	prom = (acumFilas/arrayDoble.length).toFixed(2);
  	numFila++;
  	alert("El promedio de la fila " + numFila + " es: " + prom);
	}
	alert("El arreglo ingresado fue: [[4,6,0],[2,1,5],[3,9,7]]");
}