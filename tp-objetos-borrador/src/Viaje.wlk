class Viaje {
	
	const origen
	const property destino
	const medioDeTransporte
	
	method precio() {
		return medioDeTransporte.precioDeViaje(origen, destino)
	}
	
	method distanciaEntreOrigenYDestino() {
		return origen.distanciaA(destino)
	}
	
}
