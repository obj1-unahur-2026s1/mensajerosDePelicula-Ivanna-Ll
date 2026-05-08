import destinos.*
import empresa.*
import paquetes.*

object roberto {
  var transporteActual = bicicleta
  method pesoTotal() = 50 + transporteActual.pesoTotal()
  method puedeHacerLlamada() = false
  method transporteActual() = transporteActual
}
object bicicleta {
  method pesoTotal() = 5
} 
object camion {
  var acoplados = 1
  method actualizar(acoplado) {
    acoplados = acoplados + acoplado
  }
  method pesoTotal() = 500 * acoplados
}
object chuckNorris {
  method pesoTotal() = 80
  method puedeHacerLlamada() = true
}
object neo {
  var credito = true
  method pesoTotal() = 0
  method puedeHacerLlamada() = credito 
} 
