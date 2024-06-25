class Plaga {
	var property poblacion
	var property tipo
	var property nivelDeDanio
	var property transmitenEnfermadades = poblacion > 9
	method ataque(){
		poblacion = poblacion * 1.1
	}
}
class Cucarachas inherits Plaga{
	var property peso = poblacion * 8
	override method nivelDeDanio(){
		nivelDeDanio =poblacion / 2
	} 
	override method transmitenEnfermadades(){
		transmitenEnfermadades = poblacion > 9 and peso > 9
	}
	override method ataque(){
		super()
		peso = peso + 2
	}
}
class Mosquitos inherits Plaga{
	override method nivelDeDanio(){
		nivelDeDanio = poblacion 
	}
	override method transmitenEnfermadades(){
		transmitenEnfermadades =poblacion > 9 and poblacion % 3 == 0
	}
}
class Pulgas inherits Plaga{
	override method nivelDeDanio(){
		nivelDeDanio =poblacion * 2
	} 
}
class Garrapatas inherits Plaga{
	override method nivelDeDanio(){
		nivelDeDanio =poblacion * 2
	} 
	override method ataque(){
		poblacion = poblacion * 1.2
	}
}
