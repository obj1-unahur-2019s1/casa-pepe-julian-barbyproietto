import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa) {cosas.add(cosa)}
	
	method cantidadDeCosasCompradas() {return cosas.size()}
	
	method tieneComida() {return cosas.any({cosa => cosa.esComida()})}
	
	method vieneDeEquiparse() {return cosas.last().esElectrodomestico() || cosas.last().precio() > 5000}
	
	method esDerrochona(){return cosas.sum({cosa=>cosa.precio()})>=9000}

	method compraMasCara(){return cosas.max({cosa => cosa.precio()})}
	
	method electrodomesticosComprados(){return cosas.filter({cosa => cosa.esElectrodomestico()})}
	
	method malaEpoca(){return cosas.all({cosa => cosa.esComida()})}
	
	method queFaltaComprar(lista){ return cosas.contains(lista)}
	
	method faltaComida(){return cosas.count({cosa => cosa.esComida()}) < 2}
}
