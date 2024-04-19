<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Granja agricola</title>
    <style>
        #cuadrado {
            width: 100px;
            height: 100px;
            background-color: red;
            position: absolute;

            top: 570px;
            left: 1000px;
        }
    </style>
</head>
<body>
    <div class="absolute -z-9000 inset-0 bg-no-repeat bg-[url('Imagenes/G_agricola.png')] bg-cover"></div>
    <div id="cuadrado"></div>

<script>
    
    class Planta {
            constructor() {
                this.esta_regado = false;
            }

            regar() {
                this.esta_regado = true;
                document.getElementById('cuadrado').style.backgroundColor = 'green';
                // Lógica adicional según sea necesario
            }

            // Otras funciones de la planta
        }
        const cuadrado = document.getElementById('cuadrado');
        const miPlanta = new Planta();

        cuadrado.addEventListener('click', () => {
            // Acción cuando haces click en el cuadrado (por ejemplo, regar la planta)
            miPlanta.regar();
        });
</script>
</body>
</html>