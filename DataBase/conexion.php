<?php

    function conectar(){
        $hostname="localhost";
        $username="user_topicos_B";
        $password="Bmiranda12.,";
        $database="juego";
        $conexion = mysqli_connect($hostname, $username, $password, $database);
        if(!$conexion){
            die('Error de conexion: ' . mysqli_connect_error());
        }
        else{
            return $conexion;
        } 
    }

?>