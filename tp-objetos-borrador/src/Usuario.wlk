import BarrileteCosmico.barrileteCosmico

class Usuario {
	
	const nombre
	const property viajesRealizados
	const usuariosQueSigue
	var property localidadOrigen
	var saldo
	
	method saldo() {
		return saldo
	}
	
	method viajarA(unDestino) {
		const transporte = barrileteCosmico.transporte()
		
		if (self.puedeRealizarViaje(unDestino, transporte)) {
			const viaje = barrileteCosmico.viaje(self.localidadOrigen(), unDestino, transporte)
			viajesRealizados.add(viaje)
			saldo -= viaje.precio()
			self.localidadOrigen(unDestino)
		} else {
			throw new Exception(message = "Saldo insuficiente para viajar")
		}
	}
	
	method puedeRealizarViaje(unDestino, unTransporte) {
		return saldo >= unTransporte.precioDeViaje(self.localidadOrigen(), unDestino)
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