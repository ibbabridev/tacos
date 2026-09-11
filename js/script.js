const btnMexicanFood = document.getElementById("btn-mexicanfood");


const imagenMenu = document.getElementById("imagen-menu");
const tituloMenu = document.getElementById("titulo-menu");
const contenidoMenu = document.getElementById("contenido-menu");
const elementosMenu = document.getElementById("elementos-menu");

function mostrarMexicanFood() {

    imagenMenu.src = "assets/imagenes/TACOSCABEZA.jpg";

    tituloMenu.textContent = "Mexican Food";

    elementosMenu.innerHTML = `
        <p>mxcnfood1</p>
        <p>mxcnfood2</p>
        <p>mxcnfood3</p>
        <p>mxcnfood4</p>
    `;
    contenidoMenu.scrollIntoView({
        behavior: "smooth"
    });
    }

btnMexicanFood.addEventListener("click", mostrarMexicanFood);

