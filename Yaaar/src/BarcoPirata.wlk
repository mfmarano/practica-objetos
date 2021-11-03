class BarcoPirata {
	
	var mision
	const tripulantes = []
	const capacidad
	
	method puedeSerSaqueadaPor(unPirata) {
		return unPirata.estaPasadoDeGrogXD()
	}
	
	method puedeAceptar(unPirata) {
		return self.tieneLugarParaUnoMas() && self.leEsUtil(unPirata)
	}
	
	method leEsUtil(unPirata) {
		return unPirata.esUtilPara(mision)
	}
	
	method tieneLugarParaUnoMas() {
		return tripulantes.size() < capacidad
	}
	
	method incorporar(unPirata) {
		if (self.puedeAceptar(unPirata)) {
			tripulantes.add(unPirata)
		} else {
			self.error("No puedo aceptar a este pirata!")
		}
	}
	
	method cambiarDeMision(unaMision) {
		mision = unaMision
		self.echarTripulantesInutiles()
	}
	
	method echarTripulantesInutiles() {
		tripulantes.removeAllSuchThat { unTripulante => not self.leEsUtil(unTripulante) }
	}
	
	method pirataMasEbrio() {
		return tripulantes.max { unTripulante => unTripulante.ebriedad() }
	}
	
	method anclarEn(unaCiudad) {
		tripulantes.forEach { tripulante => tripulante.irAlBar() }
		tripulantes.remove(self.pirataMasEbrio())
		unaCiudad.sumarHabitante()
	}
	
	method esTemible() {
		return mision.puedeSerRealizadaPor(self)
	}
	
	method algunTripulanteTiene(unItem) {
		return tripulantes.any { unTripulante => unTripulante.tiene(unItem) }
	}
	
	method esVulnerableA(unBarco) {
		return self.cantidadDeTripulantes() <= unBarco.cantidadDeTripulantes() / 2
	}
	
	method cantidadDeTripulantes() {
		return tripulantes.size()
	}
	
	method tripulacionPasadaDeGrogXD() {
		return tripulantes.all { unTripulante => unTripulante.estaPasadoDeGrogXD() }
	}
	
	method tieneSuficienteTripulacion() {
		return self.cantidadDeTripulantes() >= capacidad * 0.9
	}
	
}