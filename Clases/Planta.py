# Clase de una planta para juego de granja.
from dataclasses import dataclass

@dataclass
class Planta:
    id = int
    tipo = str
    esta_regado = bool
    duracion_regado = int
    tiempo_cosecha = int
    tiempo_cosechado = int
    cosechado = bool
    precio = int
    
    def __init__(self, id: int, esta_regado: bool):
        self.id = id
        self.esta_regado = esta_regado
        self.duracion_regado = 5
        self.tiempo_cosecha = 5
        self.tiempo_cosechado = 0
        self.cosechado = False
        self.precio = 10

    def crecer(self):
        self.tiempo_cosechado += 1
        self.duracion_regado -= 1
        if self.tiempo_cosechado >= self.tiempo_cosecha:
            self.cosechado = True
        if self.duracion_regado <= 0:
            self.esta_regado = False

    def vender(self):
        if self.cosechado:
            return self.precio * 2
        else:
            return print("No se puede vender la planta si no ha sido a crecido.")
        
    def regar(self):
        self.esta_regado = True
        self.duracion_regado = 5

    def cortar(self):
        if self.cosechado:
            self.tiempo_cosechado = 0
            self.cosechado = False
            return True
        else:
            return False
#%%
p1 = Planta()