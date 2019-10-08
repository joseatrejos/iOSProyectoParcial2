//
//  Carro.swift
//  iOSProyectoParcial2
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Carro {
    
    var modelo : String?
    var marca : String?
    var año : Int?
    var propietario : String?
    var placa : String?
    var foto : String?
    
    init(modelo : String, marca : String, año : Int, propietario : String, placa : String, foto : String){
        self.modelo = modelo
        self.marca = marca
        self.propietario = propietario
        self.placa = placa
        self.año = año
        self.foto = foto
    }
}
