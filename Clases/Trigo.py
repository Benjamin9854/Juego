# Clase de una planta de trigo para juego de granja.
from dataclasses import dataclass
import Planta as Planta

@dataclass
class Trigo (Planta):
    def __init__(self):
        super().__init__()
        self.id = 1
        self.tipo = "Trigo"
        self.tiempo_cosecha = 10
        self.tiempo_cosechado = 0
        self.cosechado = False
        self.precio = 20

    