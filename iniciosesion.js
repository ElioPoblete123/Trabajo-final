document.addEventListener('DOMContentLoaded', function() {
    const loginForm = document.getElementById('login-form');
    const comprasSection = document.getElementById('compras');
    const comprasList = document.getElementById('compras-list');
    const agregarCompraForm = document.getElementById('agregar-compra-form');
    const logoutButton = document.getElementById('logout-button');

    let usuarioActual = null;

    loginForm.addEventListener('submit', function(e) {
        e.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;

        // Debes agregar aquí la lógica de autenticación con tu backend
        // Por ejemplo, puedes enviar una solicitud a un servidor para verificar las credenciales.
        // Si la autenticación es exitosa, establece usuarioActual y muestra las compras.

        // Aquí, simularemos una autenticación exitosa
        usuarioActual = { username: username, compras: [] };
        mostrarCompras();
    });

    agregarCompraForm.addEventListener('submit', function(e) {
        e.preventDefault();
        const fecha = document.getElementById('fecha').value;
        const direccion = document.getElementById('direccion').value;
        const estado = document.getElementById('estado').value;

        // Debes agregar aquí la lógica para agregar la compra al usuarioActual
        // Por ejemplo, puedes enviar los datos al servidor para almacenarlos.

        // Aquí, simularemos la adición de una compra
        if (usuarioActual) {
            usuarioActual.compras.push({ fecha, direccion, estado });
            mostrarCompras();
        }
    });

    logoutButton.addEventListener('click', function() {
        usuarioActual = null;
        mostrarCompras();
    });

    function mostrarCompras() {
        if (usuarioActual) {
            comprasList.innerHTML = '';
            usuarioActual.compras.forEach(function(compra, index) {
                const listItem = document.createElement('li');
                listItem.innerHTML = `Compra #${index + 1}:<br>Fecha_Pedido: ${compra.fecha}<br>Direccion_Pedido: ${compra.direccion}<br>Estado_Pedido: ${compra.estado}`;
                comprasList.appendChild(listItem);
            });
            comprasSection.style.display = 'block';
            logoutButton.style.display = 'block';
            loginForm.style.display = 'none';
        } else {
            comprasSection.style.display = 'none';
            logoutButton.style.display = 'none';
            loginForm.style.display = 'block';
        }
    }
});
