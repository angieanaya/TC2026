//Crear el objeto XMLHTTPRequest
function getRequestObject() {
  // Asynchronous objec created, handles browser DOM differences
  if(window.XMLHttpRequest) {
    // Mozilla, Opera, Safari, Chrome IE 7+
    return (new XMLHttpRequest());
  }
  else if (window.ActiveXObject) {
    // IE 6-
    return (new ActiveXObject("Microsoft.XMLHTTP"));
  } else {
    // Non AJAX browsers
    return(null);
  }
}


//Función que detona la petición asíncrona 
function buscar() {
    request = getRequestObject();
    if (request != null) {
        let Autores = document.getElementById("Autores").value;
        let Generos = document.getElementById("Generos").value;
        var url = 'control_buscar.php?Autores=' + Autores + '&Generos=' + Generos;

        request.open('GET', url, true);
        request.onreadystatechange =
            function () {
                if ((request.readyState == 4)) {
                    // Se recibió la respuesta asíncrona, entonces hay que actualizar el cliente.
                    // A esta parte comúnmente se le conoce como la función del callback
                    document.getElementById("resultados_consulta").innerHTML = request.responseText;
                }
            };
        // Limpiar la petición
        request.send(null);

    }
}

document.getElementById("buscar").onclick = buscar;