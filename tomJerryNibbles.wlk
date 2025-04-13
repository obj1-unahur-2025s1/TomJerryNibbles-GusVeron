import wollok.vm.*
object tom {
    var energia = 50
    
    // Consulta.
    method velocidadMaxima() = 5 + (energia / 10)
    method energia() = energia
    method puedeCazar(unaDistancia) = unaDistancia / 2 <= energia

    // Indicacion.
    method correr(metros) {
        energia = energia - (metros / 2)
    }
    method comer(raton) {
        energia = energia + 12 + (raton.peso())
    }
    method cazar(unRaton, unaDistancia) {
        if(self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)
            self.comer(unRaton)
        }
    }
}

object jerry {
  var edad = 2

  method edad() = edad
  method peso() = edad * 20

  method cumplirAnios() {
    edad += 1
  }
}

object nibbles {
  method peso() = 35
}

object sparkles {
  var edad = 4

  method peso() = edad * 20
  method edad() = edad 

  method cumplirAnios() {
     edad += 1 
  }
}