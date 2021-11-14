const vacunas = #{}

class Localidad {
	
	const property nombre
	const property equipajeImprescindible
	const property kilometro
	var precio
	var porcentajeDescuentoAcumulado = 0
	
	method precio() {
		return precio * (1 - porcentajeDescuentoAcumulado / 100)
	}
	
	method esDestacada() {
		return self.precio() > 2000
	}
	
	method cancelarDescuento() {
		porcentajeDescuentoAcumulado = 0
	}
	
	method aplicarDescuento(porcentaje) {
		porcentajeDescuentoAcumulado = (porcentajeDescuentoAcumulado + porcentaje).min(100)
		
		if (!equipajeImprescindible.contains("Certificado de descuento")) {
			equipajeImprescindible.add("Certificado de descuento")
		}
	}
	
	method esPeligrosa() {
		return self.tieneVacunaEnSuEquipaje()
	}
	
	method tieneVacunaEnSuEquipaje() {
		return vacunas.any { vacuna => self.tiene(vacuna) }
	}
	
	method distanciaA(unaLocalidad) {
		return (self.kilometro() - unaLocalidad.kilometro()).abs()
	}
	
	method tiene(unItem) {
		return equipajeImprescindible.contains(unItem)
	}
	
}

class Montania inherits Localidad {
	
	const altura
	
	override method esPeligrosa() {
		return altura > 5000 && super()
	}
	
	override method esDestacada() {
		return true
	}
	
}

class Playa inherits Localidad {
	
	override method esPeligrosa() {
		return false
	}
	
}

class CiudadHistorica inherits Localidad {
	
	const museos = #{}
	
	override method esPeligrosa() {
		return !self.tiene("Seguro de asistencia al viajero")
	}
	
	override method esDestacada() {
		return museos.size() >= 3 && super()
	}
	
}