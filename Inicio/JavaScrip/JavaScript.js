var btnIniciar = document.getElementById("btnIniciar");
var usuario = document.getElementById("txtUser");

function saludar() {
    alert("hola hola");
    return "hola";
}

btnIniciar.addEventListener("click", saludar, true)