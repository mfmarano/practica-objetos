class MedioDeTransporte {
	
	const tiempoPorKilometro
	const property costoPorKilometro
	
	method precioDeViaje(origen, destino) {
		return origen.distanciaA(destino) * costoPorKilometro + destino.precio()
	} 
	
}