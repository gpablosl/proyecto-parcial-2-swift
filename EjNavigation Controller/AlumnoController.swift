//
//  AlumnoController.swift
//  EjNavigation Controller
//
//  Created by Alumno on 22/09/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class AlumnoController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var tvAlumnos: UITableView!
    var naves : [Nave] = []
    
    var stats1 : [Stats] = []


    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return naves.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaNaveController
            celda?.lblNombre.text = naves[indexPath.row].nombre
            celda?.lblId.text = naves[indexPath.row].id
            celda?.lblDesignacion.text = naves[indexPath.row].designacion
            celda?.lblTier.text = naves[indexPath.row].nivel
            celda?.imgNave.image = UIImage(named: naves[indexPath.row].imagen)
            return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesAlumnoController
        destino.nave = naves[tvAlumnos.indexPathForSelectedRow!.row]
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        naves.append(Nave(nombre: "Max", designacion: "IPM", id: "15647", nivel: "Nivel 22", armamento: "Misiles", imagen: "Nave1", stats: stats1))
        
        stats1.append(Stats(tier: "1", salud: "112", dmg: "56", armadura: "3", escudos: "No"))
        stats1.append(Stats(tier: "2", salud: "145", dmg: "78", armadura: "4", escudos: "Si"))
        

    }
}
