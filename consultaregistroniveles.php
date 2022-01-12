<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $nivel=$_POST["nivel"];

        if($nivel){
            $consulta = $conect->prepare('SELECT u.email,r.puntaje,r.fecha_puntaje FROM resultado_primer_nivel r
            INNER JOIN usuario u ON r.id_usuario = u.id_usuario ORDER BY r.fecha_puntaje DESC');
            $consulta->execute();

            $puntajes = $consulta->fetchAll();

            foreach($puntajes as $clave => $valor){
                echo $valor['email'];
                echo '*';
                echo $valor['puntaje'];
                echo '*';
                echo $valor['fecha_puntaje'];
                echo '/';
            }
        }
        else{
            $consulta = $conect->prepare('SELECT u.email,r.puntaje,r.fecha_puntaje FROM resultado_segundo_nivel r
            INNER JOIN usuario u ON r.id_usuario = u.id_usuario ORDER BY r.fecha_puntaje DESC');
            $consulta->execute();

            $puntajes = $consulta->fetchAll();

            foreach($puntajes as $clave => $valor){
                echo $valor['email'];
                echo '*';
                echo $valor['puntaje'];
                echo '*';
                echo $valor['fecha_puntaje'];
                echo '/';
            }
        }

    }
    else{
        header("Location: index.php");
    }

?>