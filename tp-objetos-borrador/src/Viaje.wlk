class Viaje {
	
	const origen
	const property destino
	const medioDeTransporte
	
	method precio() {
		return destino.precio() + medioDeTransporte.costoPorKilometro() * origen.distanciaA(destino)
	}
	
	method distanciaEntreOrigenYDestino() {
		return origen.distanciaA(destino)
	}
	
}
