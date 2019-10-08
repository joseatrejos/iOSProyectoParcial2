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
    
    var carr : Carro?
    var callbackActualizarTabla: (() -> Void)?
    
   /* @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtDireccion: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!*/
    
    override func viewDidLoad() {
        self.title = "Detalles del Carro"
        
       /* txtNombre.text = contacto!.nombre
        txtTelefono.text = "\(contacto!.telefono!)"
        txtDireccion.text = contacto!.direccion
        txtCorreo.text = contacto!.correo*/
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {/*
        // Update Info
        contacto?.nombre = txtNombre.text
        contacto?.telefono? = (txtTelefono.text! as NSString).integerValue
        contacto?.direccion = txtDireccion.text
        contacto?.correo = txtCorreo.text
        
        // Reload Table
        callbackActualizarTabla!()
        
        // Pop View
        self.navigationController?.popViewController(animated: true)*/
    }
    
}
