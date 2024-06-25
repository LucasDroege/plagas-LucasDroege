import plagas.*
class Elementos  {
	var esBueno 
	var cont = 0
	const barrios = []
	method esBueno(){
		return esBueno 
	}
	method constituirBarrio(elemento){
		barrios.add(elemento)
		cont = if(elemento.esBueno()) cont + 1 else cont
	}
	method esBarrioCopado(){
		 const eleM = barrios.size() - cont
		return cont > eleM
	}
}
class Hogar inherits Elementos  {
	var property nivelDeMugre
	var property confort
	method esBuenHogar(){
		esBueno = confort / 2 == nivelDeMugre
	}
	override method  esBueno() =  esBueno
	method efecto(condicion) {
		nivelDeMugre =  nivelDeMugre + condicion.poblacion()
	}
}
class Huerta inherits Elementos  {
	var property capacidadDeProduccion
	var property nivelProduccion
	method esBuenaHuerta(){
		esBueno = capacidadDeProduccion > nivelProduccion
	}
	method efecto(condicion) {
		capacidadDeProduccion = if(condicion.transmitenEnfermadades()) capacidadDeProduccion - (condicion.nivelDeDanio() * 0.1) - 10 else capacidadDeProduccion - (condicion.nivelDeDanio() * 0.1)
	}
}
class Mascota inherits Elementos   {
	var property nivelDeSalud
	method esBuenaMascota(){
		esBueno = nivelDeSalud > 250
	}
	method efecto(condicion) {
		nivelDeSalud = if(condicion.transmitenEnfermadades()) nivelDeSalud - condicion.nivelDeDanio() else nivelDeSalud  
	}
}

