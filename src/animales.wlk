import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	var property peso=200
	var property tieneSed=false
	
	method comer(kgs){
		if(not self.tieneHambre()){
			self.error("No tengo hambre")
		}		
		peso+=kgs*0.50
		tieneSed=true
	}
	method beber(){
		peso=peso-1.max(0)
		tieneSed=false
	}
	method tieneHambre(){
		return peso<200
	}
	method caminar(){
		if(peso<50){
			self.error("No puedo caminar")
		}
		peso=50.max(peso*0.95)
		}
		method arriba(){
			self.caminar()
			position=self.position().up(1)
		}
		method abajo(){
			self.caminar()
			position=self.position().down(1)
		}
		method derecha(){
			self.caminar()
			position=self.position().right(1)
		}
		method izquierda(){
			self.caminar()
			position=self.position().left(1)
	}
}




class Gallina{
	var property position = game.at(6,6)
	const property image = "gallina.gif"
	const property peso=4
	var vecesQueComio=0
	
	method comer(kgs){
		vecesQueComio++
	}
	method tieneSed(){
		return vecesQueComio==2 || vecesQueComio==5
	}
	method beber(){}
	method tieneHambre(){return vecesQueComio%2==0}
	method caminar(){}
	method arriba(){
		position=self.position().up(1)
	}
	method abajo(){
		position=self.position().down(1)
	}
	method derecha(){
		position=self.position().right(1)
	}
	method izquierda(){
		position=self.position().left(1)
	}
}