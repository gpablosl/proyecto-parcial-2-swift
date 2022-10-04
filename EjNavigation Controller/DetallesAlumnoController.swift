//
//  DetallesAlumnoController.swift
//  EjNavigation Controller
//
//  Created by Alumno on 27/09/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class DetallesAlumnoController : UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var lblDesignacion: UILabel!
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblNivel: UILabel!
    @IBOutlet weak var lblArmamento: UILabel!
    
    
    var nave : Nave?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if nave != nil{
            self.title = nave?.nombre
            lblDesignacion.text = nave!.designacion
            lblId.text = nave!.id
            lblNivel.text = nave!.nivel
            lblArmamento.text = nave!.armamento

            
        }else{
            self.title = "Detalles de Nave"
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nave!.stats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaStats") as? CeldaStatsController
        celda?.lblTier.text = nave!.stats[indexPath.row].tier
        celda?.lblSalud.text = nave!.stats[indexPath.row].salud
        celda?.lblDamage.text = nave!.stats[indexPath.row].dmg
        celda?.lblArmadura.text = nave!.stats[indexPath.row].armadura
        celda?.lblEscudos.text = nave!.stats[indexPath.row].escudos
        return celda!
    }
    
}
