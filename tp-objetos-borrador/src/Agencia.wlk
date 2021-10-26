import Destino.*

object barrileteCosmico {
	
	const destinos = #{ garlicSea, silverSea, lastToninas, goodAirs }
	
	method destinos() {
		return destinos
	}
	
	method destinosImportantes() {
		return self.destinos().filter({ destino => self.esDestinoDestacado(destino) })
	}
	
	method aplicarDescuentoADestinos(porcentaje) {
		self.destinos().forEach({ destino => destino.aplicarDescuento(porcentaje) })
	}
	
	method esEmpresaExtrema() {
		return self.destinosImportantes().any({ destino => self.esDestinoPeligroso(destino) })
	}
	
	method cartaDeDestinos() {
		return self.destinos().map({ destino => destino.nombre() })
	}
	
	method esDestinoDestacado(unDestino) {
		return unDestino.precio() > 2000
	}
	
	method esDestinoPeligroso(unDestino) {
		return unDestino.requiereLlevarVacuna()
	}
	
}
