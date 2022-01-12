<?php
    include "./config/conexion.php";

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {

        $nivel=$_POST["nivel"];
        $puntaje=$_POST["puntaje"];
        $id=$_POST["id_usuario"];

        if($nivel){
            $actualizarDatos = $conect->prepare("INSERT INTO resultado_primer_nivel(id_usuario,puntaje) VALUES (:id,:puntaje)");
            $actualizarDatos->execute([
                'id'=>$id,
                'puntaje'=>$puntaje
            ]);
        }
        else{
            $actualizarDatos = $conect->prepare("INSERT INTO resultado_segundo_nivel(id_usuario,puntaje) VALUES (:id,:puntaje)");
            $actualizarDatos->execute([
                'id'=>$id,
                'puntaje'=>$puntaje
            ]);
        }

    }
    else{
        header("Location: index.php");
    }

?>