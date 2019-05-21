import wollok.game.*
import animales.*
class Comedero {
	var property position = game.at(10,10)
	const property image = "granComedero.gif"
	
	const pesoMaximo=150
	var property raciones=25
	method alimentar(animal){
		if(animal.peso()<pesoMaximo&&animal.tieneHambre()){
			animal.comer(25)
			raciones--
		}
	}
	
}
