import BarrileteCosmico.barrileteCosmico

class Usuario {
	
	const nombre
	const property viajesRealizados
	const usuariosQueSigue
	var saldo
	var localidadOrigen
	var perfil
	
	method saldo() {
		return saldo
	}
	
	method actualizarPerfil(unPerfil) {
		perfil = unPerfil
	}
	
	method actualizarLocalidadOrigen(unaLocalidad) {
		localidadOrigen = unaLocalidad
	}
	
	method viajarA(unDestino) {
		const viaje = barrileteCosmico.viaje(self, unDestino, perfil.transporteIdeal())
		self.agregarViaje(viaje)
		self.descontarSaldo(viaje.precio())
		self.actualizarLocalidadOrigen(unDestino)
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
	
	method agregarViaje(unViaje) {
		viajesRealizados.add(unViaje)
	}
	
	method descontarSaldo(unMontoADescontar) {
		saldo -= unMontoADescontar
	}
}