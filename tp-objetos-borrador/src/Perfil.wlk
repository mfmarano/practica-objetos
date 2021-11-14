import BarrileteCosmico.barrileteCosmico

object empresarial {
	
	method transporteIdeal(unUsuario, unDestino) {
		return barrileteCosmico.transporteMasVeloz()
	}
	
}

object estudiantil {
	
	method transporteIdeal(unUsuario, unDestino) {
		return barrileteCosmico.transporteAdecuadoPara(unUsuario, unDestino)
	}
	
}

object grupoFamiliar {
	
	method transporteIdeal(unUsuario, unDestino) {
		return barrileteCosmico.cualquierTransporte()
	}
	
}