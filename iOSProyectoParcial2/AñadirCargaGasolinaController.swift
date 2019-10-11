//
//  AñadirCargaGasolina.swift
//  iOSProyectoParcial2
//
//  Created by Alumno on 10/9/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AñadirCargaGasolinaController : UIViewController {
    
    // Variable to store the gas info from the last Table View Cell
    var gasolina : Gasolina?
    
    // Update Table
    var callbackActualizarTabla: (() -> Void)?
    
    // Text Field Outlets
    @IBOutlet weak var txtLitros: UITextField!
    @IBOutlet weak var txtCosto: UITextField!
    
    // View did Load
    override func viewDidLoad() {
        self.title = "Nueva Carga de Gasolina"
    }
    
    // Save Button Action
    @IBAction func doTapGuardar(_ sender: Any) {
        // Insert Info
        gasolina?.Litros = (txtLitros.text! as NSString).integerValue
        gasolina?.Costo = (txtCosto.text! as NSString).integerValue
        
        // Reload Table
        callbackActualizarTabla!()
        
        // Pop View
        self.navigationController?.popViewController(animated: true)
    }
}
