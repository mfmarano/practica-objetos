object espia {
	
	method saludCritica() {
		return 15
	}
	
	method completarMision(mision, empleado) {
		mision.enseniarHabilidades(empleado)
	}
	
}

class Oficinista {
	
	var cantidadEstrellas = 0
	
	method saludCritica() {
		return 40 - 5 * cantidadEstrellas
	}
	
	method completarMision(mision, empleado) {
		self.ganarEstrella()
		if (cantidadEstrellas == 3) {
			empleado.puesto(espia)
		}
	}
	
	method ganarEstrella() {
		cantidadEstrellas ++
	}
	
}