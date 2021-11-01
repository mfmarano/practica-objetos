import Viaje.*

object barrileteCosmico {
	
	const property localidades = #{}
	const property transportes = []
	const usuarios = #{}
	
	method viaje(unOrigen, unDestino) {
		
		return new Viaje(
			origen = unOrigen,
			destino = unDestino,
			medioDeTransporte = transportes.anyOne()
		)
		
	}
	
	method localidadesMasImportantes() {
		return localidades.filter{ localidad => localidad.esDestacado() }
	}
	
	method aplicarDescuentosALocalidades(porcentaje) {
		localidades.forEach{ localidad => localidad.aplicarDescuento(porcentaje) }
	}
	
	method esEmpresaExtrema() {
		return localidades.any{ localidad => localidad.esPeligroso() }
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