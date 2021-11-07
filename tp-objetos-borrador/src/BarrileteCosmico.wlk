import Viaje.*

object barrileteCosmico {
	
	const property localidades = #{}
	const usuarios = #{}
	const transportes = []
	
	method viaje(unUsuario, unDestino) {
		
		const transporte = transportes.anyOne()
		
		if (self.puedeRealizarViaje(unUsuario, unDestino, transporte)) {
			return new Viaje
			(
				origen = unUsuario.localidadOrigen(),
				destino = unDestino,
				medioDeTransporte = transporte
			)
		} else {
			throw new Exception(message = "Saldo insuficiente para viajar")
		}
		
	}
	
	method puedeRealizarViaje(unUsuario, unDestino, unTransporte) {
		return unUsuario.saldo() >= unTransporte.precioDeViaje(unUsuario.localidadOrigen(), unDestino)
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