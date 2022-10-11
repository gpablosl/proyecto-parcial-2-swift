//
//  AlumnoController.swift
//  EjNavigation Controller
//
//  Created by Alumno on 22/09/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class NaveController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    
    @IBOutlet weak var tvNaves: UITableView!
    
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
        
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaNave") as? CeldaNaveController
            celda?.lblNombre.text = naves[indexPath.row].nombre
            celda?.lblId.text = naves[indexPath.row].id
            celda?.lblDesignacion.text = naves[indexPath.row].designacion
            celda?.lblTier.text = naves[indexPath.row].nivel
            celda?.imgNave.layer.cornerRadius = 5
            celda?.imgNave.layer.borderWidth = 5
            celda?.imgNave.layer.borderColor = UIColor.white.cgColor
            celda?.imgNave.image = UIImage(named: naves[indexPath.row].imagen)
            return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesNaveController
        destino.nave = naves[tvNaves.indexPathForSelectedRow!.row]
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]

        
        naves.append(Nave(nombre: "IFD-5", designacion: "Caza", id: "32FWG6236A", nivel: "Nivel 1", armamento: "Laser", imagen: "Nave1", stats: []))
        
        naves[0].stats.append(Stats(tier: "1", salud: "112", dmg: "56", armadura: "3", escudos: "No"))
        naves[0].stats.append(Stats(tier: "2", salud: "145", dmg: "78", armadura: "4", escudos: "Si"))
        naves[0].stats.append(Stats(tier: "3", salud: "187", dmg: "90", armadura: "5", escudos: "Si"))
        
        
        naves.append(Nave(nombre: "IFX-1", designacion: "Caza", id: "23626AEFB", nivel: "Nivel 2", armamento: "Laser", imagen: "Nave2", stats: []))
        
        naves[1].stats.append(Stats(tier: "1", salud: "156", dmg: "70", armadura: "3", escudos: "No"))
        naves[1].stats.append(Stats(tier: "2", salud: "170", dmg: "87", armadura: "4", escudos: "Si"))
        naves[1].stats.append(Stats(tier: "3", salud: "205", dmg: "101", armadura: "5", escudos: "Si"))
        
        naves.append(Nave(nombre: "YGR-53", designacion: "Ataque", id: "436373FHBD", nivel: "Nivel 2", armamento: "Cañones", imagen: "Nave3", stats: []))
        
        naves[2].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "No"))
        naves[2].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "No"))
        naves[2].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))

        naves.append(Nave(nombre: "F-68", designacion: "Caza", id: "JFT5RESRE544", nivel: "Nivel 3", armamento: "Laser", imagen: "Nave4", stats: []))
        
        naves[3].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "No"))
        naves[3].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "No"))
        naves[3].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))

        naves.append(Nave(nombre: "B-90", designacion: "Bombardero", id: "SDG3463GER3", nivel: "Nivel 3", armamento: "Misiles", imagen: "Nave5", stats: []))
        
        naves[4].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "Si"))
        naves[4].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "Si"))
        naves[4].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))
        
        naves.append(Nave(nombre: "JG-54", designacion: "Sigilo", id: "NHJTGFTJ544", nivel: "Nivel 3", armamento: "Cañon riel", imagen: "Nave6", stats: []))
        
        naves[5].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "No"))
        naves[5].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "Si"))
        naves[5].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))
        
        
        naves.append(Nave(nombre: "YS-32", designacion: "Cañonera", id: "574454DHERD", nivel: "Nivel 4", armamento: "Mixto", imagen: "Nave7", stats: []))
        
        naves[6].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "5", escudos: "No"))
        naves[6].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "5", escudos: "No"))
        naves[6].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "6", escudos: "No"))
        
        naves.append(Nave(nombre: "FSX-2", designacion: "Bombardero", id: "3525RHDHD34", nivel: "Nivel 4", armamento: "Nuclear", imagen: "Nave8", stats: []))
        
        naves[7].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "1", escudos: "Si"))
        naves[7].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "2", escudos: "Si"))
        naves[7].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "3", escudos: "Si"))

        naves.append(Nave(nombre: "Nave 9", designacion: "-", id: "-", nivel: "-", armamento: "-", imagen: "-", stats: []))
        
        naves[8].stats.append(Stats(tier: "1", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[8].stats.append(Stats(tier: "2", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[8].stats.append(Stats(tier: "3", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        
        naves.append(Nave(nombre: "Nave 10", designacion: "-", id: "-", nivel: "-", armamento: "-", imagen: "-", stats: []))
        
        naves[9].stats.append(Stats(tier: "1", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[9].stats.append(Stats(tier: "2", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[9].stats.append(Stats(tier: "3", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        
        naves.append(Nave(nombre: "Nave 11", designacion: "-", id: "-", nivel: "-", armamento: "-", imagen: "-", stats: []))
        
        naves[10].stats.append(Stats(tier: "1", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[10].stats.append(Stats(tier: "2", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[10].stats.append(Stats(tier: "3", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        
        naves.append(Nave(nombre: "Nave 12", designacion: "-", id: "-", nivel: "-", armamento: "-", imagen: "-", stats: []))
        
        naves[11].stats.append(Stats(tier: "1", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[11].stats.append(Stats(tier: "2", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[11].stats.append(Stats(tier: "3", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        
        naves.append(Nave(nombre: "Nave 13", designacion: "-", id: "-", nivel: "-", armamento: "-", imagen: "-", stats: []))
        
        naves[12].stats.append(Stats(tier: "1", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[12].stats.append(Stats(tier: "2", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[12].stats.append(Stats(tier: "3", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        
        naves.append(Nave(nombre: "Nave 14", designacion: "-", id: "-", nivel: "-", armamento: "-", imagen: "-", stats: []))
        
        naves[13].stats.append(Stats(tier: "1", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[13].stats.append(Stats(tier: "2", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[13].stats.append(Stats(tier: "3", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        
        naves.append(Nave(nombre: "Nave 15", designacion: "-", id: "-", nivel: "-", armamento: "-", imagen: "-", stats: []))
        
        naves[14].stats.append(Stats(tier: "1", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[14].stats.append(Stats(tier: "2", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
        naves[14].stats.append(Stats(tier: "3", salud: "-", dmg: "-", armadura: "-", escudos: "-"))
    }
}
