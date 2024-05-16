<?php
    include("conexion.php");

    function obtenerDinero(){
        $conexion = conectar();
        if ($conexion) {
            $consulta = "SELECT dinero FROM jugador WHERE id = 3";
            $result = mysqli_query($conexion, $consulta);

            if ($result) {
                // Si la consulta fue exitosa, extrae y devuelve el dinero del jugador
                $fila = mysqli_fetch_assoc($result);
                return $fila['dinero'];
            } else {
                // Manejo de errores en caso de que la consulta falle
                echo "Error en la consulta: " . mysqli_error($conexion);
            }
        } else {
            // Manejo de errores en caso de que la conexión falle
            echo "Error al conectar a la base de datos";
        }
    }



    function obtenerNombre(){
        $conexion = conectar();
        if ($conexion) {
            $consulta = "SELECT nombre FROM jugador WHERE id = 3";
            $result = mysqli_query($conexion, $consulta);

            if ($result) {
                // Si la consulta fue exitosa, extrae y devuelve el dinero del jugador
                $fila = mysqli_fetch_assoc($result);
                return $fila['nombre'];
            } else {
                // Manejo de errores en caso de que la consulta falle
                echo "Error en la consulta: " . mysqli_error($conexion);
            }
        } else {
            // Manejo de errores en caso de que la conexión falle
            echo "Error al conectar a la base de datos";
        }
    }
?>