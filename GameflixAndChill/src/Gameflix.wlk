object gameflix {
	
	const juegos = []
	const usuarios = #{}
	
	method juegosDeCategoria(unaCategoria) {
		return juegos.filter({ juego => juego.esDeCategoria(unaCategoria) })
	}
	
	method juegoDeNombre(unNombre) {
		return juegos.findOrElse
		(
			{ juego => juego.seLlama(unNombre) },
			{ throw new Exception(message = "No existe un juego con ese nombre!") }
		)
	}
	
	method juegoRecomendado() {
		return juegos.anyOne() 
		// por esto juegos es una lista y no un set. anyOne() en sets devuelve siempre el primero
	}
	
	method cobrarSuscripcion() {
		usuarios.forEach({ usuario => usuario.pagarSuscripcion() })
	}
	
}