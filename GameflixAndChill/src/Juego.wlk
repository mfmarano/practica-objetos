import Suscripcion.infantil

class Juego {
	
	const nombre
	const precio
	const categoria
	
	method esDeCategoria(unaCategoria) {
		return categoria == unaCategoria
	}
	
	method seLlama(unNombre) {
		return nombre == unNombre
	}
	
	method esBarato() {
		return precio < 30
	}
	
}

class JuegoViolento inherits Juego {
	
	method serJugado(usuario, horasJugadas) {
		usuario.reducirHumor(10 * horasJugadas)
	}
	
}

class MOBA inherits Juego {
	
	method serJugado(usuario, horasJugadas) {
		usuario.comprarSkins()
	}
	
}

class JuegoTerrorifico inherits Juego {
	
	method serJugado(usuario, horasJugadas) {
		usuario.actualizarSuscripcion(infantil)
	}
	
}

class JuegoEstrategico inherits Juego {
	
	method serJugado(usuario, horasJugadas) {
		usuario.aumentarHumor(5 * horasJugadas)
	}
	
}