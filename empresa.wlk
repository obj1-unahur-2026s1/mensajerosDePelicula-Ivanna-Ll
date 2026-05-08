import wollok.mirror.*
import mensajeros.*
import destinos.*
import paquetes.*


object empresa {
  const listaDeEmpleados = [roberto, chuckNorris]
  const destinosDeEntrega = [puenteBroklyn, matrix]
  const paquetesPendiente = []
  const paquetesEnviados = []
  method contratar(unEmpleado) {
    listaDeEmpleados.add(unEmpleado)
  }
  method despedir(unEmpleado) {
    listaDeEmpleados.remove(unEmpleado)
  }
  method despedirEmpleados() {
    listaDeEmpleados.clear()
  }
  method mensajeriaEsGrande() {
    return listaDeEmpleados.size() > 2
  }
  method primerMensajeroDeEmpresa() {
    return listaDeEmpleados.first()
  }
  method primerMensajeroPuedeEntregar(unPaquete) {
    return unPaquete.puedeSerEntregadoPor(self.primerMensajeroDeEmpresa())
  }
  method pesoDeUltimoMensajero() { 
    return listaDeEmpleados.last().pesoTotal()
  }
//parte 3
  method mensajeriaPuedeEntregar(unPaquete) {
    return listaDeEmpleados.any({e => unPaquete.puedeSerEntregadoPor(e)})
  }
  method mensajerosQuePuedenRealizarEntrega(unPaquete) {
    return listaDeEmpleados.filter({e => unPaquete.puedeSerEntregadoPor(e)})
  }
  method pesoToTalDeEmpleados() {
    return listaDeEmpleados.map({e => e.pesoTotal()}).sum()
  }
  method cantidadDeEmpleados() {
    return listaDeEmpleados.size()
  }
  method mensajeriaTieneSobrepeso() {
    return (self.pesoToTalDeEmpleados() / self.cantidadDeEmpleados()) > 500
  }
  method realizarEnvio(unPaquete) {
    if (self.mensajerosQuePuedenRealizarEntrega(unPaquete).isEmpty())
    paquetesPendiente.add(unPaquete) 
    else 
    paquetesEnviados.add(unPaquete)
  } 
  method facturacionDeLaEmpresa() {
    return paquetesEnviados.map({p => p.precioFinal()}).sum()
  }
} 