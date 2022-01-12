<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $correo=$_POST["correo"];
        $password=$_POST["password"];

        $miNuevoRegistro = $conect->prepare('INSERT INTO usuario(email,password) VALUES (:correo, :password)');

        $miNuevoRegistro->execute([
            'correo'=>$correo,
            'password'=>password_hash($password, PASSWORD_BCRYPT)
            
        ]);

    }
    else{
        header("Location: index.php");
    }

?>