/*
 * Faltaron las parcelas ecologias2
 */
import plantas.*

class Parcela {
	var property ancho
	var property largo
	var property horasDeSol
	const property plantas = []
	var superficie = 0
	var cantidadMaxima=0
	
	method superficie()= self.ancho()* self.largo()
	
	method  cantidadMaxima()= self.superficie()/5 
	
	method  tieneComplicaciones()=
		plantas.filter({p=>p.horasDeSolTolera()>self.horasDeSol()})
		
	method plantarUna(planta){
		plantas.add(planta).max(self.cantidadMaxima().error("cantidad maxima de plantas superdad"))
		
	}
	
}
