class MedioDeTransporte {
	
	const tiempoPorKilometro
	const property costoPorKilometro
	
	method precioDeViaje(unOrigen, unDestino) {
		return unOrigen.distanciaA(unDestino) * costoPorKilometro + unDestino.precio()
	}
	
}