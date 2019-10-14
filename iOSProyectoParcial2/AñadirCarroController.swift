//
//  AñadirCarroController.swift
//  iOSProyectoParcial2
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AñadirCarroController : UIViewController {
    
    // Variable to store the car's info from the last Table View Cell
    var carro : Carro?
    
    // Update Table
    var callbackActualizarTabla: (() -> Void)?
    
    // Text Field Outlets
    @IBOutlet weak var txtPlaca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtAño: UITextField!
    @IBOutlet weak var txtPropietario: UITextField!
    
    // View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Agregar Carro"
    }
    
    // Save Button Function
    @IBAction func doTapGuardar(_ sender: Any) {
        // Insert Info
        carro?.placa = txtPlaca.text
        carro?.modelo = txtModelo.text
        carro?.marca = txtMarca.text
        carro?.año = txtAño.text
        carro?.propietario = txtPropietario.text
        carro?.foto = "Accord"
        
        // Reload Table
        callbackActualizarTabla!()
        
        // Pop View
        self.navigationController?.popViewController(animated: true)
    }
}
