import Viaje.*

object barrileteCosmico {
	
	const property localidades = #{}
	const usuarios = #{}
	const transportes = []
	
	method viaje(unOrigen, unDestino, unTransporte) {
		return new Viaje
		(
			origen = unOrigen,
			destino = unDestino,
			medioDeTransporte = unTransporte
		)
	}
	
	method transporte() {
		return transportes.anyOne()
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