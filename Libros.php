<?php

$Titulo_Libro=$_POST['Titulo_Libro'];
$Autor_Libro=$_POST['Autor_Libro'];
$Editorial_Libro=$_POST['Editorial_Libro'];
$AñoPublicacion_Libro=$_POST['AñoPublicacion_Libro'];
$Stock_Libro=$_POST['Stock_Libro'];
$ISBN_Libro=$_POST['ISBN_Libro'];
$Categoria_Libro=$_POST['Categoria_Libro'];
$Imagen_Libro=$_POST['Imagen_Libro'];

$servername = "127.0.0.1";
$username = "root";
$password = "";
$database = "libros";

$connection= mysqli_connect($servername, $username, $password, $database);

$query= "INSERT INTO libros(Titulo_Libro, Autor_Libro, Editorial_Libro, AñoPublicacion_Libro, Stock_Libro, ISBN_Libro, 
Categoria_Libro) VALUES ('$Titulo_Libro', '$Autor_Libro', '$Editorial_Libro', '$AñoPublicacion_Libro', '$Stock_Libro', 
'$ISBN_Libro', '$Categoria_Libro')";




if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recibe los datos del formulario
    $Titulo_Libro = $_POST['Titulo_Libro'];
    $Autor_Libro = $_POST['Autor_Libro'];
    // ... Otros campos ...

    // Procesa la subida de la imagen
    $Imagen_Libro = "Libros"; // Cambia esto al directorio deseado
    $ruta_imagen = $Imagen_Libro . "/" . basename($_FILES["Imagen_Libro"]["name"]);

    // Verifica si se seleccionó un archivo
    if (!empty($_FILES["Imagen_Libro"]["name"])) {
        // Mueve la imagen al directorio de destino
        if (move_uploaded_file($_FILES["Imagen_Libro"]["tmp_name"], $ruta_imagen)) {
            echo "Imagen subida correctamente.";
        } else {
            echo "Error al subir la imagen.";
        }
    } else {
        echo "No se ha seleccionado ninguna imagen.";
    }
    }

if (mysqli_query($connection, $query)) {
        echo "Datos insertados correctamente.";
    } else {
        echo "Error al insertar datos: " . mysqli_error($connection);
    }
    
mysqli_close($connection);

?>