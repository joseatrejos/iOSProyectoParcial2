//
//  AñadirCargaGasolina.swift
//  iOSProyectoParcial2
//
//  Created by Alumno on 10/9/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AñadirCargaGasolina : UIViewController {
    
    //var gasolina = Gasolina?
    
    @IBOutlet weak var txtLitros: UITextField!
    @IBOutlet weak var txtCosto: UILabel!
    
    override func viewDidLoad() {
        self.title = "Nueva Carga de Gasolina"
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        // Insert Info
        gasolina?.litros = txtLitros.text
        gaolina?.costos = txtCosto.text
        
        // Reload Table
        //callbackActualizarTabla!()
        
        // Pop View
        self.navigationController?.popViewController(animated: true)
    }
    
}
