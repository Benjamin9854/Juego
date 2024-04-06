<?php
    function obtenerJugador($conexion, $id){
        $query= "SELECT * FROM jugador WHERE id_jugador = '$id'";
        $result=$conexion->query($query);
        $jugador = $result -> fetch_array(MYSQLI_ASSOC);
        print_r($jugador);
        return $jugador;
    }
?>