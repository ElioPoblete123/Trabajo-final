<?php

include("online.php");


        $Nombres_Clientes='NomClientes';
        $Apellido_Clientes='ApeClientes';
        $Documento_Clientes	='DocuClientes';
        $Mail_Clientes='MailClientes';
        $Telefono_Clientes='TelefClientes';
        $Direccion_Clientes='DirecClientes';
        $FecNac_Clientes='FecNacClientes';

                $query= "INSERT INTO clientes(Nombres_Clientes, Apellido_Clientes, Documento_Clientes, Mail_Clientes, Telefono_Clientes, Direccion_Clientes, 
                FecNac_Clientes) VALUES ('$Nombres_Clientes', '$Apellido_Clientes', '$Documento_Clientes', '$Mail_Clientes', '$Telefono_Clientes', 
                
                '$Direccion_Clientes', '$FecNac_Clientes')";

    
?>

<!DOCTYPE html>
<html>
<head>
    <title>Venta de Libros</title>
    <link rel="stylesheet" type="text/css" href="Formulario.css">
</head>
<body>
<header>
    <img src="./LIBRERIA-ELIO.png" alt="nose" height="100" width="300">
    <a class="nose5" href="#loginPopup">Opciones</a>
</header>

<div id="loginPopup" class="popup">
    <div class="popup-content">
        <h2>Opciones</h2><br>
        <!-- Formulario de inicio de sesión -->
        <form method="post" action="insertardatos">
            <!-- Campos de usuario y contraseña -->
            <!-- ... -->
        <a href="#" class="btn btn-danger closeButton">Cerrar</a>
    </div>
</div>

<div class="nose">
    <h1>Libros</h1>
    <br>
        <!-- Campos de información del cliente -->
        <input type="text" id="Nombres_Clientes" name="NomClientes" placeholder="Nombre" required><br>
        <input type="text" id="Apellido_Clientes" name="ApeClientes" placeholder="Apellido" required><br>
        <input type="text" id="Documento_Clientes" name="DocuClientes" placeholder="Numero de documento" required><br>
        <input type="text" id="Mail_Clientes" name="MailClientes" placeholder="Mail" required><br>
        <input type="tel" id="Telefono_Clientes" name="TelefClientes" placeholder="Numero de telefono" required><br>
        <input type="text" id="Direccion_Clientes" name="DirecClientes" placeholder="Direccion" required><br>
        <input type="date" id="FecNac_Clientes" name="FecNacClientes" placeholder="Fecha de nacimiento" required><br>

        <label for="Titulo_Libro">Seleccione el libro:</label><br>
    <select id="Libros" name="Titulo_Libro">
        <option value="0"> Eliga un libro </option>
                                                            <?php
                                                            $libro_query = "SELECT * FROM libros";
                                                            $resultadolibro = mysqli_query($connection, $libro_query);
                                                            while ($valor = mysqli_fetch_array($resultadolibro)) {
                                                                echo '<option value="' . $valor["Titulo_Libro"] . '">' . $valor["Titulo_Libro"] . '</option>';
                                                            }
                                                            ?>
                                                            </select>

        <input type="number" id="Cantidad_Libros" name="Cantidad_Libros" min="1" placeholder="Cantidad" required><br>
        <div class="book-container">
            <div class="book">
                <img src="C:\Users\Usuario 89\Downloads\descarga.png" alt="Libro Girando">
            </div>
        </div>

        <input type="submit" value="Enviar Pedido">
    <a href="historial.html"><input type="button" value="Historial"></a>

    <br>

    <!-- Otros campos y botones -->
    <!-- ... -->

<!-- Otro contenido HTML y scripts ... -->
<script src="scriptFormulario.js"></script>

</body>
</html>