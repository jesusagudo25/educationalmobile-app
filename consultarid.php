<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $correo=$_POST["correo"];
        $password=$_POST["password"];

        $consultaID = $conect->prepare('SELECT * FROM usuario WHERE email = :email');

        $consultaID->execute([
            'email' => $correo
        ]);

        $usuarioRegistrado = $consultaID->fetch();

        echo 'id_usuario='.urlencode($usuarioRegistrado['id_usuario']);

    }
    else{
        header("Location: index.php");
    }

?>