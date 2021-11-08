import BarrileteCosmico.barrileteCosmico

class Usuario {
	
	const nombre
	const property viajesRealizados
	const usuariosQueSigue
	var property localidadOrigen
	var saldo
	var perfil
	
	method saldo() {
		return saldo
	}
	
	method viajarA(unDestino) {
		const viaje = barrileteCosmico.viaje(self, unDestino, perfil.transporteConveniente(self, unDestino))
		viajesRealizados.add(viaje)
		saldo -= viaje.precio()
		self.localidadOrigen(unDestino)
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
	
	method actualizarPerfil(unPerfil) {
		perfil = unPerfil
	}
	
}