
import UIKit

class Nave{
    var nombre : String
    var designacion : String
    var id : String
    var nivel : String
    var armamento : String
    var imagen : String
    var stats : [Stats]

    init(nombre: String, designacion: String, id: String, nivel: String, armamento : String, imagen : String, stats : [Stats]){
        self.nombre = nombre
        self.designacion = designacion
        self.id = id
        self.nivel = nivel
        self.armamento = armamento
        self.imagen = imagen
        self.stats = stats
    }
    
}
