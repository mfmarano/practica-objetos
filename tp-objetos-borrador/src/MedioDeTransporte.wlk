class MedioDeTransporte {
	
	const property tiempoPorKilometro
	
	method precioDeViaje(unOrigen, unDestino) {
		return unOrigen.distanciaA(unDestino) * self.costoPorKilometro() + unDestino.precio()
	}
	
	method costoPorKilometro()
	
}

class Avion inherits MedioDeTransporte {
	
	const nivelesDeImpulsoTurbinas
	
	override method costoPorKilometro() {
		return nivelesDeImpulsoTurbinas.sum()
	}
	
}

class Micro inherits MedioDeTransporte {
	
	override method costoPorKilometro() {
		return 5000
	}
	
}

class Tren inherits MedioDeTransporte {
	
	override method costoPorKilometro() {
		return 2300 * 1.6
	}
	
}

class Barco inherits MedioDeTransporte {
	
	const probabilidadDeChoqueConUnIceberg
	
	override method costoPorKilometro() {
		return 1000 * probabilidadDeChoqueConUnIceberg
	}
	
}