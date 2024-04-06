<?php
    include("conexion.php");
    include("funciones.php");
    $id=1;
    $jugador = obtenerJugador($conexion, $id);
    print_r($jugador);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    id:<?php echo $jugador['id_jugador'];?> <br>
    Nombre:<?php echo $jugador['nombre_jugador'];?> <br>
    Dinero:<?php echo $jugador['dinero_jugador'];?> <br>
</body>
</html>