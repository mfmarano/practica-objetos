class Localidad {
	
	const property nombre
	const property equipajeImprescindible
	const property kilometro
	var precio
	
	method precio() {
		return precio
	}
	
	method esDestacada() {
		return precio > 2000
	}
	
	method aplicarDescuento(porcentaje) {
		precio *= 1 - porcentaje / 100
		equipajeImprescindible.add("Certificado de descuento")
	}
	
	method esPeligroso() {
		return self.tieneVacunaEnSuEquipaje()
	}
	
	method tieneVacunaEnSuEquipaje() {
		return equipajeImprescindible.any{ objeto => objeto.toUpperCase().contains("VACUNA") }
	}
	
	method distanciaA(unaLocalidad) {
		return (self.kilometro() - unaLocalidad.kilometro()).abs()
	}
	
}