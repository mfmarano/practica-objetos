import Viaje.*

object barrileteCosmico {
	
	const property localidades = #{}
	const usuarios = #{}
	const transportes = []
	
	method viaje(unUsuario, unDestino, unTransporte) {
		
		if (self.puedeRealizarViaje(unUsuario, unDestino, unTransporte)) {
			return new Viaje
			(
				origen = unUsuario.localidadOrigen(),
				destino = unDestino,
				medioDeTransporte = unTransporte
			)
		} else {
			throw new Exception(message = "Saldo insuficiente para viajar")
		}
		
	}
	
	method puedeRealizarViaje(unUsuario, unDestino, unTransporte) {
		return unUsuario.saldo() >= unTransporte.precioDeViaje(unUsuario.localidadOrigen(), unDestino)
	}
	
	method transporteMasVeloz() {
		return self.transporteMasVelozDe(transportes)
	}
	
	method transporteMasVelozDe(unosTransportes) {
		return transportes.min { transporte => transporte.tiempoPorKilometro() }
	}
	
	method cualquierTransporte() {
		return transportes.anyOne()
	}
	
	method transporteAdecuadoPara(unUsuario, unDestino) {
		return self.transporteMasVelozDe(self.transportesAccesiblesPara(unUsuario, unDestino))
	}
	
	method transportesAccesiblesPara(unUsuario, unDestino) {
		return transportes.filter { transporte => self.puedeRealizarViaje(unUsuario, unDestino, transporte) }
	}
	
	method localidadesMasImportantes() {
		return localidades.filter{ localidad => localidad.esDestacada() }
	}
	
	method aplicarDescuentosALocalidades(porcentaje) {
		localidades.forEach{ localidad => localidad.aplicarDescuento(porcentaje) }
	}
	
	method esEmpresaExtrema() {
		return localidades.any{ localidad => localidad.esPeligrosa() }
	}
	
	method cartaDeLocalidades() {
		return localidades.map{ localidad => localidad.nombre() }
	}
	
	method agregarLocalidad(unaLocalidad) {
		localidades.add(unaLocalidad)
	}
	
	method agregarUsuario(unUsuario) {
		usuarios.add(unUsuario)
	}
	
	method agregarTransporte(unTransporte) {
		transportes.add(unTransporte)
	}
	
}