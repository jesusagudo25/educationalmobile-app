<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $solicitud=$_POST["solicitud"];

        $consulta = $conect->prepare('SELECT r.nombre ,u.email,u.estado,u.ultimo_acceso FROM usuario u
        INNER JOIN usuario_rol r ON u.id_rol = r.id_rol');
        $consulta->execute();

        $usuarios = $consulta->fetchAll();

        foreach($usuarios as $clave => $valor){
            echo $valor['nombre'];
            echo '*';
            echo $valor['email'];
            echo '*';
            if($valor['estado']){
                echo 'Activo';
            }
            else{
                echo 'Inactivo';
            }
            echo '*';
            echo $valor['ultimo_acceso'];
            echo '/';
        }
        

    }
    else{
        header("Location: index.php");
    }

?>