import BarrileteCosmico.barrileteCosmico

object empresarial {
	
	method transporteConveniente(_, _) {
		return barrileteCosmico.transporteConMayorVelocidad()
	}
	
}

object estudiantil {
	
	method transporteConveniente(unUsuario, unDestino) {
		return barrileteCosmico.transporteSegunUsuario(unUsuario, unDestino)
	}
	
}

object grupoFamiliar {
	
	method transporteConveniente(_, _) {
		return barrileteCosmico.cualquierTransporte()
	}
	
}