class Mision {
	
	method esUtil(unPirata)
	
	method puedeSerRealizadaPor(unBarco) {
		return unBarco.tieneSuficienteTripulacion() && self.requisitoExtra(unBarco)
	}
	
	method requisitoExtra(unBarco)
	
}

object busquedaDelTesoro inherits Mision {
	
	override method esUtil(unPirata) {
		return unPirata.tieneAlgunoDe(["brújula", "mapa", "botella de grogXD"]) && unPirata.tienePocoOro()
	}
	
	override method requisitoExtra(unBarco) {
		unBarco.algunTripulanteTiene("Llave de cofre")
	}
	
}

class ConvertirseEnLeyenda inherits Mision {
	const itemObligatorio
	
	override method esUtil(unPirata) {
		return unPirata.tieneMuchosItems() && unPirata.tiene(itemObligatorio)
	}
	
	override method requisitoExtra(unBarco) {
		return true
	}
	
}

object monedasDeSaqueo {
	var property cantidad
}

class Saqueo inherits Mision {
	const victima
	
	override method esUtil(unPirata) {
		return unPirata.tieneMenosOroQue(monedasDeSaqueo.cantidad()) && victima.puedeSerSaqueadaPor(unPirata)
	}
	
	override method requisitoExtra(unBarco) {
		return victima.esVulnerableA(unBarco)
	}
	
}
