import BarrileteCosmico.barrileteCosmico

class Usuario {
	
	const nombre
	const property viajesRealizados
	var property localidadOrigen
	const usuariosQueSigue
	var saldo
	
	method saldo() {
		return saldo
	}
	
	method viajarA(unaLocalidadDestino) {
		const viaje = barrileteCosmico.viaje(self.localidadOrigen(), unaLocalidadDestino)
		
		if (self.puedeRealizarViaje(viaje)) {
			viajesRealizados.add(viaje)
			saldo -= viaje.precio()
			self.localidadOrigen(unaLocalidadDestino)
		} else {
			throw new Exception(message = "Saldo insuficiente para viajar")
		}
		
	}
	
	method puedeRealizarViaje(unViaje) {
		return saldo >= unViaje.precio()
	}
	
	method kilometros() {
		return viajesRealizados.sum{ viaje => viaje.distanciaEntreOrigenYDestino() }
	}
	
	method seguirA(unUsuario) {
		self.agregarSeguido(unUsuario)
		unUsuario.agregarSeguido(self)
	}
	
	method agregarSeguido(unUsuario) {
		usuariosQueSigue.add(unUsuario)
	}
	
}