//
//  EditarCarroController.swift
//  iOSProyectoParcial2
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarCarroController : UIViewController {
    
    var carro : Carro?
    var callbackActualizarTabla: (() -> Void)?
    
    
    override func viewDidLoad() {
        self.title = "Detalles del Carro"
        
        
    }
    
}
