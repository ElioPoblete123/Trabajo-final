<?php
$servername = "127.0.0.1";
        $username = "root";
        $password = "";
        $database = "libros";

        $connection= mysqli_connect($servername, $username, $password, $database);

        if (!$connection) {
            die("La conexión falló: " . mysqli_connect_error());
        }

?>