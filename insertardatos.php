<?php

include("online.php");


        $Nombres_Clientes=$_POST['NomClientes'];
        $Apellido_Clientes=$_POST['ApeClientes'];
        $Documento_Clientes=$_POST['DocuClientes'];
        $Mail_Clientes=$_POST['MailClientes'];
        $Telefono_Clientes=$_POST['TelefClientes'];
        $Direccion_Clientes=$_POST['DirecClientes'];
        $FecNac_Clientes=$_POST['FecNacClientes'];

                $query= "INSERT INTO clientes(Nombres_Clientes, Apellido_Clientes, Documento_Clientes, Mail_Clientes, Telefono_Clientes, Direccion_Clientes, 
                FecNac_Clientes) VALUES ('$Nombres_Clientes', '$Apellido_Clientes', '$Documento_Clientes', '$Mail_Clientes', '$Telefono_Clientes', 
                '$Direccion_Clientes', '$FecNac_Clientes')";

?>