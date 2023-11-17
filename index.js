document.addEventListener('DOMContentLoaded', function() {
    // Agrega un evento de clic al botón "Formulario"
    document.getElementById('mostrarFormularioInterno').addEventListener('click', function() {
        // Redirige a la página "Formulario.html"
        window.location.href = "Formulario.html";
    });
});

// Obtener todos los botones "Leer más" y "Leer menos"
const readMoreButtons = document.querySelectorAll('.read-more');
const readLessButtons = document.querySelectorAll('.read-less');

// Para cada botón "Leer más", agregar un evento de clic
readMoreButtons.forEach(button => {
    button.addEventListener('click', function() {
        // Obtener el párrafo con la clase "full-text" más cercano al botón presionado
        const fullText = this.nextElementSibling;
        // Mostrar el párrafo completo
        fullText.style.display = 'block';
        // Ocultar el botón "Leer más"
        this.style.display = 'none';
    });
});

// Para cada botón "Leer menos", agregar un evento de clic
readLessButtons.forEach(button => {
    button.addEventListener('click', function() {
        // Ocultar el párrafo completo
        this.parentElement.style.display = 'none';
        // Mostrar el botón "Leer más" correspondiente
        this.parentElement.previousElementSibling.style.display = 'block';
    });
});

