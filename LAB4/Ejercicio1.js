function crearTabla(){
  var n = prompt("Ingrese un número");
  var cuadrado = new Array();
  var cubo = new Array();

  var article = document.getElementsByTagName("article")[0];

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
  article.appendChild(table);

}
