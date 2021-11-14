class MedioDeTransporte {
	
	const property tiempoPorKilometro
	
	method costoPorKilometro()
	
	method precioDeViaje(unOrigen, unDestino) {
		return unOrigen.distanciaA(unDestino) * self.costoPorKilometro() + unDestino.precio()
	}
	
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
		return 1.6 * 2300 
	}
	
}

class Barco inherits MedioDeTransporte {
	
	const probabilidadDeChocarseConUnIceberg
	
	override method costoPorKilometro() {
		return probabilidadDeChocarseConUnIceberg * 1000
	}
	
}