class Mision {
	
	const peligrosidad
	const habilidadesRequeridas = []
	
	method serCumplidaPor(asignado) {
		self.validarHabilidades(asignado)
		asignado.recibirDanio(peligrosidad)
		asignado.finalizarMision(self)
	}
	
	method validarHabilidades(asignado) {
		if (not self.reuneHabilidadesRequeridas(asignado)) {
			self.error("La misión no se puede cumplir")
		}
	}
	
	method reuneHabilidadesRequeridas(asignado) {
		return habilidadesRequeridas.all { habilidad => asignado.puedeUsar(habilidad) }
	}
	
	method enseniarHabilidades(empleado) {
		self.habilidadesQueNoPosee(empleado)
			.forEach { habilidad => empleado.aprender(habilidad) }
	}
	
	method habilidadesQueNoPosee(empleado) {
		return habilidadesRequeridas.filter { habilidad => not empleado.poseeHabilidad(habilidad) }
	}
	
}
