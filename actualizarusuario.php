<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $id_usuario=$_POST["id_usuario"];
        $id_rol=$_POST["id_rol"];
        $estado=$_POST["estado"];

        $actualizarDatos = $conect->prepare("UPDATE usuario SET id_rol = :id_rol, estado = :estado WHERE id_usuario = :id_usuario;");
        $actualizarDatos->execute([
            'id_rol'=>$id_rol,
            'estado'=>$estado,
            'id_usuario' => $id_usuario
        ]);

    }
    else{
        header("Location: index.php");
    }

?>