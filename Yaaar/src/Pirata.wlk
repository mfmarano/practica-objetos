class Pirata {
	
	const items = [""]
	var ebriedad = 0
	var monedas = 0
	
	method esUtilPara(unaMision) {
		return unaMision.esUtil(self)
	}
	
	method tieneAlgunoDe(unosItems) {
		return unosItems.any { unItem => self.tiene(unItem) }
	}
	
	method tiene(unItem) {
		return items.contains(unItem)
	}
	
	method tienePocoOro() {
		return monedas <= 5
	}
	
	method tieneMuchosItems() {
		return items.size() >= 10
	}
	
	method tieneMenosOroQue(unaCantidad) {
		return monedas < unaCantidad
	}
	
	method estaMasEbrioQue(unaCantidad) {
		return ebriedad >= unaCantidad
	}
	
	method estaPasadoDeGrogXD() {
		return self.estaMasEbrioQue(90)
	}
	
	method puedeFormarParteDeLaTripulacionDe(unBarco) {
		return unBarco.puedeAceptar(self)
	}
	
	method ebriedad() {
		return ebriedad
	}
	
	method irAlBar() {
		ebriedad += 5
		monedas -= 1
	}
	
}
