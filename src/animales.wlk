import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	var property peso=200
	var property tieneSed=false
	
	method comer(kgs){
		peso+=kgs*0.50
		tieneSed=true
	}
	method beber(){
		peso=peso-1.max(0)
		tieneSed=false
	}
}

class Gallina{
		var property position = game.at(6,6)
	const property image = "gallina.gif"
	const property peso=4
	var property tieneSed=false
	var vecesQueComio=0
	
	method comer(kgs){
		vecesQueComio+=1
	}
	method beber(){
		if(vecesQueComio==2 ||vecesQueComio==5){tieneSed=true}
		else{tieneSed=false}
	}
}









class Batman{
	var property position=game.at(1,1)
	const property image="batman.jpg"
}


class Evee{
	var property position=game.at(1,1)
	const property image="eevee.jpg"
}
