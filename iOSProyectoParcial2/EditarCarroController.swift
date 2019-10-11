//
//  EditarCarroController.swift
//  iOSProyectoParcial2
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarCarroController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Table View
    @IBOutlet weak var tvCargasGasolina: UITableView!
    
    // Table Cell Array for Gas Details
    var gasolinas : [Gasolina] = []
    
    // Variable that stores the car to edit from the last table cell
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
        self.title = "Detalles del Carro"
        
        // Filling of the Outlets
        txtPlaca.text = carro!.placa
        txtModelo.text = carro!.modelo
        txtMarca.text = carro!.marca
        txtAño.text = carro!.año
        txtPropietario.text = carro!.propietario
    }
    
    // Number of Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of Rows in Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gasolinas.count
    }
    
    // Table View Cell link to the array gasolinas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaGasolina") as? CeldaGasolinaController
        
        celda?.lblLitros.text = "\(gasolinas[indexPath.row].Litros!)"
        celda?.lblCosto.text = "\(gasolinas[indexPath.row].Costo!)"
        
        return celda!
    }
    
    // Height for Row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    // Table Reload
    func recargarTabla() {
        tvCargasGasolina.reloadData()
    }
    
    // Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToAñadirCargaGasolina" {
            let destino = segue.destination as? AñadirCargaGasolinaController
            
            gasolinas.append(Gasolina(Litros: 0, Costo: 0))
            
            destino?.gasolina = gasolinas[gasolinas.count - 1]
            
            destino?.callbackActualizarTabla = recargarTabla
            
            // Los campos Carga y Costo del Carro se llenan con lo escrito en el 3er View (AñadirCargaController)
            carro?.carga = destino?.gasolina?.Litros
            carro?.costo = destino?.gasolina?.Costo
        }
    }
    
    // Save Button Action
    @IBAction func doTapGuardar(_ sender: Any) {
        // Update Info
        carro?.placa = txtPlaca.text
        carro?.modelo = txtModelo.text
        carro?.marca = txtMarca.text
        carro?.año = txtAño.text
        carro?.propietario = txtPropietario.text
        
        // Reload Table
        callbackActualizarTabla!()
        
        // Pop View
        self.navigationController?.popViewController(animated: true)
    }
    
}
