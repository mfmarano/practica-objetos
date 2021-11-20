class Empleado {
	
	var salud = 100
	var property puesto
	const habilidades = #{}
	
	method estaIncapacitado() {
		return salud < puesto.saludCritica()
	}
	
	method puedeUsar(unaHabilidad) {
		return not self.estaIncapacitado() and self.poseeHabilidad(unaHabilidad)
	}
	
	method poseeHabilidad(unaHabilidad) {
		return habilidades.contains(unaHabilidad)
	}
	
	method recibirDanio(unaCantidad) {
		salud -= unaCantidad
	}
	
	method estaVivo() {
		return salud > 0
	}
	
	method finalizarMision(unaMision) {
		if (self.estaVivo()) {
			self.completarMision(unaMision)
		}
	}
	
	method completarMision(unaMision) {
		puesto.completarMision(unaMision, self)
	}
	
	method aprenderHabilidad(unaHabilidad) {
		habilidades.add(unaHabilidad)
	}
	
}

class Jefe inherits Empleado {
	
	const subordinados = []
	
	override method poseeHabilidad(unaHabilidad) {
		return super(unaHabilidad) or self.algunSubordinadoPuedeUsar(unaHabilidad)
	}
	
	method algunSubordinadoPuedeUsar(unaHabilidad) {
		return subordinados.any { subordinado => subordinado.puedeUsar(unaHabilidad)}
	}
	
}

class Equipo {
	
	const empleados = #{}
	
	method puedeUsar(unaHabilidad) {
		empleados.any { empleado => empleado.puedeUsar(unaHabilidad) }
	}
	
	method recibirDanio(cantidad) {
		empleados.forEach { empleado => empleado.recibirDanio(cantidad / 3) }
	}
	
	method finalizarMision(mision) {
		empleados.forEach { empleado => empleado.finalizarMision(mision) }
	}
	
}