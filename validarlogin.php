<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $correo=$_POST["correo"];
        $password=$_POST["password"];

        $consulta = $conect->prepare("SELECT * FROM usuario WHERE email = :email");
        $consulta->execute(['email'=>$correo]);
        $usuario = $consulta->fetch();

        if (empty($usuario)){
            echo 'sesion='.urlencode('incorrecto');
        }
        else{            
            if(password_verify($password, $usuario['password']) && $usuario['estado']==1){
                $consultarPuntajePrimerNivel = $conect->prepare("SELECT puntaje FROM resultado_primer_nivel WHERE id_usuario = :id ORDER BY puntaje DESC LIMIT 1");
                $consultarPuntajePrimerNivel->execute([
                    'id'=>$usuario['id_usuario']
                ]);
                $primerNivel = $consultarPuntajePrimerNivel->fetch();

                $primerNivelPuntaje = isset($primerNivel['puntaje']) ? $primerNivel['puntaje'] : 0;

                $consultarPuntajeSegundoNivel = $conect->prepare("SELECT puntaje FROM resultado_segundo_nivel WHERE id_usuario = :id ORDER BY puntaje DESC LIMIT 1");
                $consultarPuntajeSegundoNivel->execute([
                    'id'=>$usuario['id_usuario']
                ]);
                $segundoNivel = $consultarPuntajeSegundoNivel->fetch();

                $segundoNivelPuntaje = isset($segundoNivel['puntaje']) ? $segundoNivel['puntaje'] : 0;

                $actualizarDatos = $conect->prepare("UPDATE usuario SET ultimo_acceso = CURRENT_TIMESTAMP WHERE id_usuario = :id;");
                $actualizarDatos->execute([
                    'id'=>$usuario['id_usuario']
                ]);
                echo 'id_rol='.urlencode($usuario['id_rol']).'&id_usuario='.urlencode($usuario['id_usuario']).'&puntajePrimerNivel='.urlencode($primerNivelPuntaje).'&puntajeSegundoNivel='.urlencode($segundoNivelPuntaje);
            }
            else{
                echo 'sesion='.urlencode('incorrecto');
            }
        }

    }
    else{
        header("Location: index.php");
    }

?>