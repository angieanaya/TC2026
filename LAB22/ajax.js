//Función que detonará la petición asíncrona con jquery
function buscar() {
    //$.post manda la petición asíncrona por el método post.
    $.post("control_buscar.php", {
        Autores: document.getElementById("Autores").value,
        Generos: document.getElementById("Generos").value
    }).done(function (data) {
        $("#resultados_consulta").html(data);
    });
}

document.getElementById("buscar").onclick = buscar;