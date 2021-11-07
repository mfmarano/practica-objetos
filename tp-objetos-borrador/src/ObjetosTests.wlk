import Localidad.*
import BarrileteCosmico.*
import Usuario.*
import Viaje.*
import MedioDeTransporte.*

const garlicSea = new Localidad(
	nombre = "Garlic's Sea",
	equipajeImprescindible = #{"Caña de pescar", "Piloto"},
	precio = 2500,
	kilometro = 0)

const silverSea = new Localidad(
	nombre = "Silver's Sea",
	equipajeImprescindible = #{"Protector solar", "Equipo de buceo"},
	precio = 1350,
	kilometro = 20)

const lastToninas = new Localidad(
	nombre = "Last Toninas",
	equipajeImprescindible = #{"Vacuna gripal", "Vacuna B", "Necronomicon"},
	precio = 3500,
	kilometro = 10)

const goodAirs = new Localidad(
	nombre = "Good Airs",
	equipajeImprescindible = #{"Cerveza", "Protector solar"},
	precio = 1500,
	kilometro = 0)
	
const avion = new MedioDeTransporte(tiempoPorKilometro = 1, costoPorKilometro = 10)

const pabloHari = new Usuario (
	nombre = "PHari",
	viajesRealizados = #{ new Viaje(origen = goodAirs, destino = lastToninas, medioDeTransporte = avion) },
	usuariosQueSigue = #{},
	localidadOrigen = lastToninas,
	saldo = 1500)
	
const marquitosMarano = new Usuario (
	nombre = "markimarano",
	viajesRealizados = #{},
	usuariosQueSigue = #{ pabloHari },
	localidadOrigen = goodAirs,
	saldo = 3000)