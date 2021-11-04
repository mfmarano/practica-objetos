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
		return equipajeImprescindible.any{ objetoEnEquipaje => vacunas.contains(objetoEnEquipaje) }
	}
	
	method distanciaA(unaLocalidad) {
		return (self.kilometro() - unaLocalidad.kilometro()).abs()
	}
	
}
