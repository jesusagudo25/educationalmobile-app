<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $correo=$_POST["correo"];

        $consulta = $conect->prepare("SELECT * FROM usuario WHERE email = :email");
        $consulta->execute(['email'=>$correo]);
        $usuario = $consulta->fetch();
                    
        if (empty($usuario)){
            echo 'sesion='.urlencode('incorrecto');
        }
        else{
            echo 'id_rol='.urlencode($usuario['id_rol']).'&id_usuario='.urlencode($usuario['id_usuario']).'&estado='.urlencode($usuario['estado']);
        }


    }
    else{
        header("Location: index.php");
    }

?>