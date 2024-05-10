class Planta {
    constructor() {
        this.esta_regado = false;
        this.cosechado = false;
        this.valor_venta = 100;
    }

    regar(clic) {
        if (clic) {
            this.esta_regado = true;
            return true;
        }
        return false;
    }

    cosechar() {
        if (this.esta_regado && !this.cosechado) {
            this.cosechado = true;
            return this.valor_venta;
        }
        return 0;
    }
}

module.exports = Planta;
