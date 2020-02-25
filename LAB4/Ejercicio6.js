function IMC(){
	let peso = prompt("Ingresa tu peso actual en kg: ");
	let estatura = prompt("Ingresa tu estatura en metros: ")
	
	let imc = ((peso)/Math.pow(estatura, 2)).toFixed(3);

	if (imc>=0 && imc<18.5)
    {
        alert("Tu IMC es de: " + imc +", estás por debajo del peso saludable.\n");
    }
    else if (imc>=18.5 && imc<25)
    {
        alert("Tu IMC es de: " + imc + ", estás dentro del rango de peso saludable.\n");
    }
  	else if (imc>=25 && imc<30)
    {
        alert("Tu IMC es de: " + imc + ", tienes sobrepeso.\n");
    }
    else{
        alert("Tu IMC es de: " + imc + ", estás dentro del rango de obesidad.\n");
        if (imc>=30 && imc<35)
            alert("Tienes obesidad nivel 1.\n");
        else if (imc>=35 && imc<40)
            alert("Tienes obesidad severa.\n");
        else
            alert("Tienes obesidad nivel 3, osea obesidad morvida.\n");
    }
}
