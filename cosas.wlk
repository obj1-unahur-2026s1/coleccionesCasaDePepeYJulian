object heladera {
  method esElectrodomestico() = true
  
  method esComida() = false
  
  method precio() = 200000
}

object cama {
  method esElectrodomestico() = false
  
  method esComida() = false
  
  method precio() = 80000
}

object tiradeAsado {
  method esElectrodomestico() = false
  
  method esComida() = true
  
  method precio() = 3500
}

object paqueteDeFideos {
  method esElectrodomestico() = false
  
  method esComida() = true
  
  method precio() = 500
}

object plancha {
  method esElectrodomestico() = true
  
  method esComida() = false
  
  method precio() = 12000
}

object milanesas {
  method esElectrodomestico() = false
  
  method esComida() = true
  
  method precio() = 2600
}

object salsaDeTomate {
  method esElectrodomestico() = false
  
  method esComida() = true
  
  method precio() = 900
}

object microondas {
  method esElectrodomestico() = true
  
  method esComida() = false
  
  method precio() = 42000
}

object cebollas {
  method esElectrodomestico() = false
  
  method esComida() = true
  
  method precio() = 250
}

object computadora {
  method esElectrodomestico() = true
  
  method esComida() = false
  
  method precio() = dolar.precioDeVenta() * 500
}

object dolar {
  const cotizacion = 1400
  
  method precioDeVenta() = cotizacion
}
 

 object packComida {

  const componentes = []

  method agregarComponente(unComponente) {
    componentes.add(unComponente)
  }

  method precio() =
    componentes.sum({c => c.precio()})

  method esComida() = true

  method esElectrodomestico() = false
}