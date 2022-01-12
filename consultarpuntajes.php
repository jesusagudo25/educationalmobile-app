<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $id_usuario=$_POST["id_usuario"];

        $consultarPuntajePrimerNivel = $conect->prepare("SELECT puntaje FROM resultado_primer_nivel WHERE id_usuario = :id ORDER BY puntaje DESC LIMIT 1");
        $consultarPuntajePrimerNivel->execute([
            'id'=>$id_usuario
        ]);
        $primerNivel = $consultarPuntajePrimerNivel->fetch();

        $primerNivelPuntaje = isset($primerNivel['puntaje']) ? $primerNivel['puntaje'] : 0;

        $consultarPuntajeSegundoNivel = $conect->prepare("SELECT puntaje FROM resultado_segundo_nivel WHERE id_usuario = :id ORDER BY puntaje DESC LIMIT 1");
        $consultarPuntajeSegundoNivel->execute([
            'id'=>$id_usuario
        ]);
        $segundoNivel = $consultarPuntajeSegundoNivel->fetch();

        $segundoNivelPuntaje = isset($segundoNivel['puntaje']) ? $segundoNivel['puntaje'] : 0;

        echo 'puntajePrimerNivel='.urlencode($primerNivelPuntaje).'&puntajeSegundoNivel='.urlencode($segundoNivelPuntaje);

    }
    else{
        header("Location: index.php");
    }

?>