function crearTabla(){
  var n = prompt("Ingrese un número");
  var cuadrado = new Array();
  var cubo = new Array();

  var div = document.getElementsByTagName("div")[17];

  for(var i=1; i<=n; i++){
    cubo[i] = Math.pow(i, 3);
  }

  for(var i=1; i<=n; i++){
    cuadrado[i] = Math.pow(i, 2);
  }

  var table = document.createElement("table");
  var body = document.createElement("body")

  for (var i = 0; i <= 1; i++) {
    var row = document.createElement("tr");
    for (var j = 0; j <= n; j++) {
      var cell = document.createElement("td");
      if (j==0 && i==0) {
        var texto = document.createTextNode("Cuadrados: ");
      } else if(j==0 && i==1){
        var texto = document.createTextNode('Cubos: ');
      } else{
        if (i==0) {
          var texto = document.createTextNode(cuadrado[j]);
        } else {
          var texto = document.createTextNode(cubo[j]);
        }
      }
      cell.appendChild(texto);
      row.appendChild(cell);
    }
    body.appendChild(row);
  }

  table.appendChild(body);
  div.appendChild(table);

}

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

function contador(arrayNum){
    var  pos = 0, neg = 0, nulo = 0;
        for (var i=0; i<arrayNum.length; i++){
            if (arrayNum[i] == 0){
                nulo ++;
            }
            if (arrayNum[i] > 0){
                pos++;
            }
            if (arrayNum[i] < 0){
                neg++;
            }
        }
  alert("El arreglo de números ingresado: " + arrayNum + "\nNúmeros positivos: " + pos + "\nNúmeros negativos: " + neg + "\nCantidad de ceros: " + nulo);
}


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

// Creates a new list item when clicking on the "ADD TASK" button
function addTask(){
  //creates a <li> tag in which the input will be stored
  let li = document.createElement("li");
  //retrieves the text entered by the user
  let inputValue = document.getElementById("taskInput").value;
  let t = document.createTextNode(inputValue);
  li.appendChild(t);

  //if the placeholder is empty it reminds the user to write something
  if (inputValue === '') {
    alert("Enter a task first please :)");
  } else {
    document.getElementById("myTasks").appendChild(li);
  }
  //adds the task entered to the bottom of the list set in the html file
  document.getElementById("taskInput").value = "";

  //prints the close button in the right place
  let span = document.createElement("SPAN");
  let txt = document.createTextNode("x");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  //adds functionality to the close button append to each list item
  let close = document.getElementsByClassName("close");

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      let div = this.parentElement;
      div.style.display = "none";
    }
  }

  //crosses out the tasks when clicked on them
  let list = document.querySelector('ul');
  list.addEventListener('click', function(ev){
    if (ev.target.tagName === 'LI') {
      ev.target.classList.add('checked');
    }
  });
}


