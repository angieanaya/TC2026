//Función que detonará la petición asíncrona con jquery
function buscar() {
    //$.post manda la petición asíncrona por el método post.
    $.post("controlador_busqueda.php", {
        lugares: document.getElementById("lugares").value,
        tipos: document.getElementById("tipos").value
    }).done(function (data) {
        $("#resultados_consulta").html(data);
    });
}

document.getElementById("buscar").onclick = buscar;