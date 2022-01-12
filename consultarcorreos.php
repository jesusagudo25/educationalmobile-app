<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $correo=$_POST["correo"];

        /* Verificar que no existe en la base de datos el mismo email */
        $miConsulta = $conect->prepare('SELECT COUNT(*) AS length FROM usuario WHERE email = :email');

        $miConsulta->execute([
            'email' => $correo
        ]);
        
        $resultado = $miConsulta->fetch();
        // Comprueba si existe

        if ((int) $resultado['length'] > 0) {
            echo 'sesion='.urlencode('incorrecto');
        }
      	else{
          echo 'correcto='.urlencode('correcto');
      	}

    }
    else{
        header("Location: index.php");
    }

?>