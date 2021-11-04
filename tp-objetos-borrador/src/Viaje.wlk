class Viaje {
	
	const origen
	const property destino
	const medioDeTransporte
	
	method precio() {
		return self.distanciaEntreOrigenYDestino() * medioDeTransporte.costoPorKilometro() + destino.precio()
	}
	
	method distanciaEntreOrigenYDestino() {
		return origen.distanciaA(destino)
	}
	
}
