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
    
    var carro : Carro?
    var callbackActualizarTabla: (() -> Void)?
    
    @IBOutlet weak var txtPlaca: UITextField!
    @IBOutlet weak var txtModelo: UITextField!
    @IBOutlet weak var txtMarca: UITextField!
    @IBOutlet weak var txtAño: UITextField!
    @IBOutlet weak var txtPropietario: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Agregar Carro"
        
        txtPlaca.text = carro!.placa
        txtModelo.text = carro!.modelo
        txtMarca.text = carro!.marca
        txtAño.text = "\(carro!.año!)"
        txtPropietario.text = carro!.propietario
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        // Update Info
        carro?.placa = txtPlaca.text
        carro?.modelo = txtModelo.text
        carro?.marca = txtMarca.text
        carro?.año? = (txtAño.text! as NSString).integerValue
        carro?.propietario = txtPropietario.text
        
        // Reload Table
        callbackActualizarTabla!()
        
        // Pop View
        self.navigationController?.popViewController(animated: true)
    }
    
}
