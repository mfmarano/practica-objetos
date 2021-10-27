import Destino.*

object barrileteCosmico {
	
	const destinos = #{ garlicSea, silverSea, lastToninas, goodAirs }
	
	method destinos() {
		return destinos
	}
	
	method destinosImportantes() {
		return self.destinos().filter({ destino => destino.esDestinoDestacado() })
	}
	
	method aplicarDescuentoADestinos(porcentaje) {
		self.destinos().forEach({ destino => destino.aplicarDescuento(porcentaje) })
	}
	
	method esEmpresaExtrema() {
		return self.destinosImportantes().any({ destino => destino.esDestinoPeligroso() })
	}
	
	method cartaDeDestinos() {
		return self.destinos().map({ destino => destino.nombre() })
	}
	
}
