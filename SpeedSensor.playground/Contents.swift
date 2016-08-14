// Speedometer
// Exercise 2

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120

    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
    
        switch velocidad{
        case (.Apagado):
            velocidad = .VelocidadBaja
        case (.VelocidadBaja):
            velocidad = .VelocidadMedia
        case(.VelocidadMedia):
            velocidad = .VelocidadAlta
        case(.VelocidadAlta):
            velocidad = .VelocidadMedia
        }
    return (velocidad.rawValue,String("\(velocidad)"))
    }
    
}

var auto : Auto
auto = Auto.init()
print("\(auto.velocidad.rawValue), " + "\(auto.velocidad)")

var velocidadActual:Int
var velocidadEnCadena:String

for idx in 1...20{
    (velocidadActual,velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(velocidadActual), " + velocidadEnCadena)
}
