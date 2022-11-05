/*
 * Esta incompleta
 */
class Planta {
	var property anioObtencion
	var property altura
	var property horasDeSolTolera
	
	
	
	method esFuerte()=  horasDeSolTolera > 10
	
	method daNuevasSemillas()= self.esFuerte()
	
	method espacio()
	
}


class Menta inherits Planta {
	var property valor=0
	override method horasDeSolTolera()=6
	override method daNuevasSemillas()= super() or altura > 4
	override method espacio()= altura*3
	
}

class Soja  inherits Planta {
	override method horasDeSolTolera()=
		if(altura<5)
		 return 6
		else if (altura.between(0.5,1))	
		 return 7
		else
			altura> 1 
	override method daNuevasSemillas()= super() or self.anioObtencion()> 2007 and altura> 1		
	override method espacio()= altura / 0.5			
}

class Quinoa inherits Planta {
	override method daNuevasSemillas()= super() or self.anioObtencion()<2005
}
class SojaTransgenica inherits Soja{
	override method daNuevasSemillas()= false
	
}
class HierbaBuena inherits Menta {
	override method espacio()= super()*2
	
}
