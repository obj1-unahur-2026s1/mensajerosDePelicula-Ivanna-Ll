import mensajeros.*
import destinos.*
import empresa.*

object paquetito {
  var destino = matrix 
  method pagado() = true
  method precioFinal() {
   return self.pagado() 
  }
  method puedeSerEntregadoPor(unMensajero) {
    return unMensajero.permitePaso(destino)
  }
}
object paquetonViajero {
  const destinos = [puenteBroklyn,matrix]
  const precioPorDestino = 100
  var pagoParcial = 0
  method pagoACuenta(monto) {
    pagoParcial = pagoParcial + monto
  }
  method estaPago() {
    return pagoParcial >= self.precioFinal()
  }
  method precioFinal() = precioPorDestino * destinos.size()
  method puedeSerEntregadoPor(unMensajero) {
    return self.estaPago() && destinos.all({ d => d.permitePaso(unMensajero)})
  }
}
object paqueteOriginal {  
  var destino = matrix
  method precioFinal() = 50
} 