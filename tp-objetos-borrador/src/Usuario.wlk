import Destino.*
 
class Usuario {
 	
 	var nombre
 	var saldo
 	const destinosConocidos = #{}
 	const seguidos = #{}
 	
 	method volarA(unDestino) {
 		if (self.puedeVolarA(unDestino)) {
 			self.agregarDestino(unDestino)
 			saldo -= unDestino.precio()
 		} else {
 			throw new Exception(message = "Saldo insuficiente para volar al destino")
 		}
 	}
 	
 	method kilometros() {
 		return 0.1 * destinosConocidos.sum({ destino => destino.precio() })
 	}
 	
 	// chequear esto
 	method seguirA(unUsuario) {
 		seguidos.add(unUsuario)
 		unUsuario.seguirA(self)
 	}
 	
 	method puedeVolarA(unDestino) {
 		return saldo >= unDestino.precio()
 	}
 	
 	method agregarDestino(unDestino) {
 		destinosConocidos.add(unDestino)
 	}
 	
 }
 
 const pabloHari = new Usuario
 	(
 		nombre = "PHari",
 		saldo = 1500,
 		destinosConocidos = #{lastToninas, goodAirs}
 	)