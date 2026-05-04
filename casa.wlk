import cosas.*
object casa {
  const cosas = []
  
  method comprar(cosa) {
    cosas.add(cosa)
  }
  
  method cantidadDeCosasCompradas() {
    cosas.size()
  }
  
  method tieneComida() {
    cosas.any({ c => c.esComida() })
  }
  
  method vieneDeEquiparse() {
    cosas.last().esElectrodomestico() || (cosas.last().precio() > 50000)
  }
  
  method esDerrochona() {
    cosas.sum({ c => c.precio() }) >= 90000
  }
  
  method compraMasCara() {
    cosas.max({ c => c.precio() })
  }
  
  method electrodomésticosComprados() {
    cosas.filter({ c => c.esElectrodomestico() })
  }
  
  method malaEpoca() {
    cosas.all({ c => c.esComida() })
  }
  
  method queFaltaComprar(lista) = lista.filter(
    { elemento => !self.estaComprado(elemento) }
  )
  
  method estaComprado(unaCosa) = cosas.contains(unaCosa)
  
  method faltaComida() = self.cantidadComidaComprada() < 2
  
  method cantidadComidaComprada() = cosas.count({ c => c.esComida() })
}

