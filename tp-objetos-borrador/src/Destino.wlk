class Destino {
	const nombre
	const equipajeImprescindible
	var precio
	
	method precio() {
		return precio
	}
	
	method nombre() {
		return nombre
	}
	
	method equipajeImprescindible() {
		return equipajeImprescindible
	}
	
	method aplicarDescuento(porcentaje) {
		precio *= 1 - porcentaje / 100
		self.agregarAEquipajeImprescindible("Certificado de descuento")
	}
	
	method agregarAEquipajeImprescindible(unObjeto) {
		equipajeImprescindible.add(unObjeto)
	}
	
	method requiereLlevarVacuna() {
		return self.equipajeImprescindible().any({ objeto => objeto.contains("Vacuna") })
	}
}

const garlicSea = new Destino
	(
		nombre = "Garlic's Sea",
		equipajeImprescindible = ["Caña de Pescar", "Piloto"], 
		precio = 2500
	)
	
const silverSea = new Destino
	(
		nombre = "Silver's Sea",
		equipajeImprescindible = ["Protector Solar", "Equipo de Buceo"],
		precio = 1350
	)
	
const lastToninas = new Destino
	(
		nombre = "Last Toninas",
		equipajeImprescindible = ["Vacuna Gripal", "Vacuna B", "Necronomicon"],
		precio = 3500
	)
	
const goodAirs = new Destino
	(
		nombre = "Good Airs",
		equipajeImprescindible = ["Cerveza", "Protector Solar"],
		precio = 1500
	)