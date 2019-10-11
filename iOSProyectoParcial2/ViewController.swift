//
//  ViewController.swift
//  iOSProyectoParcial2
//
//  Created by Alumno on 10/7/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Table View Outler
    @IBOutlet weak var tvCarros: UITableView!
    
    // Cars Array for this Controller's Table View Cell
    var carros : [Carro] = []
    
    // View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Carros"
        
        carros.append(Carro(modelo: "El Camino", marca: "Ford", año: "1955", propietario: "José Trejo", placa: "ABC-123-V5", foto: "El Camino"))
        carros.append(Carro(modelo: "Jetta", marca: "Volkswagen", año: "2016", propietario: "Gabriel Pereda", placa: "DEF-456-W6", foto: "Jetta"))
        carros.append(Carro(modelo: "Accord", marca: "Honda", año: "2005", propietario: "Leticia Serrano Genda", placa: "GHI-789-X7", foto: "Accord"))
    }
    
    // Number of Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Number of Rows in Section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    // Table View Cell link to the array carros
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarro") as? CeldaCarroController
        
        celda?.lblPlaca.text = carros[indexPath.row].placa
        celda?.lblModelo.text = carros[indexPath.row].modelo
        celda?.lblMarca.text = carros[indexPath.row].marca
        celda?.lblAño.text = "\(carros[indexPath.row].año!)"
        celda?.lblPropietario.text = carros[indexPath.row].propietario
        celda?.imgCarro.image = UIImage(named: carros[indexPath.row].foto!)
        return celda!
    }
    
    // Height for Row
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 165
    }
    
    // Reload Table
    func recargarTabla() {
        tvCarros.reloadData()
    }
    
    // Prepare for Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditarCarro" {
            let destino = segue.destination as? EditarCarroController
            
            destino?.carro = carros[tvCarros.indexPathForSelectedRow!.row]
            
            destino?.callbackActualizarTabla = recargarTabla
        }
        else
            if segue.identifier == "goToAñadirCarro" {
                let destino = segue.destination as? AñadirCarroController
                
                carros.append(Carro(modelo: "", marca: "", año: "", propietario: "", placa: "", foto: ""))
                
                destino?.carro = carros[carros.count - 1]
                
                destino?.callbackActualizarTabla = recargarTabla
        }
    }
}

