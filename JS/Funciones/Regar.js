const cuadrado1 = document.getElementById('cuadrado1');
const cuadrado2 = document.getElementById('cuadrado2');
const cuadrado3 = document.getElementById('cuadrado3');
const cuadrado4 = document.getElementById('cuadrado4');
const cuadrado5 = document.getElementById('cuadrado5');
const cuadrado6 = document.getElementById('cuadrado6');
const cuadrado7 = document.getElementById('cuadrado7');
const cuadrado8 = document.getElementById('cuadrado8');
const cuadrado9 = document.getElementById('cuadrado8');
const cuadrado10 = document.getElementById('cuadrado10');
const cuadrado11 = document.getElementById('cuadrado11');
const cuadrado12 = document.getElementById('cuadrado12');
const cuadrado13 = document.getElementById('cuadrado13');
const cuadrado14 = document.getElementById('cuadrado14');
const cuadrado15 = document.getElementById('cuadrado15');
const cuadrado16 = document.getElementById('cuadrado16');
const cuadrado17 = document.getElementById('cuadrado17');
const cuadrado18 = document.getElementById('cuadrado18');
const cuadrado19 = document.getElementById('cuadrado19');
const cuadrado20 = document.getElementById('cuadrado20');
const cuadrado21 = document.getElementById('cuadrado21');
const cuadrado22 = document.getElementById('cuadrado22');


// Importar la clase Planta
const Planta = require('./Planta');

// Crear un arreglo de 30 objetos Planta
const Jardin = [];
for (let i = 0; i < 30; i++) {
    Jardin.push(new Planta());
}

// Asignar event listeners a los cuadrados dinámicamente
for (let i = 1; i <= 22; i++) {
    const cuadrado = document.getElementById(`cuadrado${i}`);
    if (cuadrado) {
        cuadrado.addEventListener('click', () => {
            // Regar la planta correspondiente en el arreglo
            if (Jardin[i - 1].regar(true)) {
                cuadrado.style.backgroundColor = 'green';
            }
        });
    }
}


