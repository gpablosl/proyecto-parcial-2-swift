
import UIKit
import AVFoundation
class NaveController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var reproductor_cancion: AVAudioPlayer?
    
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
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback, mode: AVAudioSessionModeDefault)
            try AVAudioSession.sharedInstance().setActive(true)
            let url = Bundle.main.url(forResource: "song", withExtension: "mp3")
            reproductor_cancion = try AVAudioPlayer(contentsOf: url!, fileTypeHint: AVFileType.mp3.rawValue)
            reproductor_cancion?.play()
        } catch let error{
            print(error.localizedDescription)
        }
        
        naves.append(Nave(nombre: "IFD-5", designacion: "Caza", id: "32FWG62A", nivel: "Nivel 1", armamento: "Laser", imagen: "Nave1", stats: []))
        
        naves[0].stats.append(Stats(tier: "1", salud: "112", dmg: "56", armadura: "3", escudos: "No"))
        naves[0].stats.append(Stats(tier: "2", salud: "145", dmg: "78", armadura: "4", escudos: "Si"))
        naves[0].stats.append(Stats(tier: "3", salud: "187", dmg: "90", armadura: "5", escudos: "Si"))
        
        
        naves.append(Nave(nombre: "IFX-1", designacion: "Caza", id: "23626AEB", nivel: "Nivel 2", armamento: "Laser", imagen: "Nave2", stats: []))
        
        naves[1].stats.append(Stats(tier: "1", salud: "156", dmg: "70", armadura: "3", escudos: "No"))
        naves[1].stats.append(Stats(tier: "2", salud: "170", dmg: "87", armadura: "4", escudos: "Si"))
        naves[1].stats.append(Stats(tier: "3", salud: "205", dmg: "101", armadura: "5", escudos: "Si"))
        
        naves.append(Nave(nombre: "YGR-53", designacion: "Ataque", id: "43673FHB", nivel: "Nivel 2", armamento: "Cañones", imagen: "Nave3", stats: []))
        
        naves[2].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "No"))
        naves[2].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "No"))
        naves[2].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))
        
        naves.append(Nave(nombre: "F-68", designacion: "Caza", id: "JF5RESE4", nivel: "Nivel 3", armamento: "Laser", imagen: "Nave4", stats: []))
        
        naves[3].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "No"))
        naves[3].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "No"))
        naves[3].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))
        
        naves.append(Nave(nombre: "B-90", designacion: "Bombardero", id: "SDG346GR", nivel: "Nivel 3", armamento: "Misiles", imagen: "Nave5", stats: []))
        
        naves[4].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "Si"))
        naves[4].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "Si"))
        naves[4].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))
        
        naves.append(Nave(nombre: "JG-54", designacion: "Sigilo", id: "NHJTJ544", nivel: "Nivel 3", armamento: "Cañon riel", imagen: "Nave6", stats: []))
        
        naves[5].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "2", escudos: "No"))
        naves[5].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "3", escudos: "Si"))
        naves[5].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "4", escudos: "Si"))
        
        
        naves.append(Nave(nombre: "YS-32", designacion: "Cañonera", id: "5744HERD", nivel: "Nivel 4", armamento: "Multiple", imagen: "Nave7", stats: []))
        
        naves[6].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "5", escudos: "No"))
        naves[6].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "5", escudos: "No"))
        naves[6].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "6", escudos: "No"))
        
        naves.append(Nave(nombre: "FSX-2", designacion: "Bombardero", id: "3525RD34", nivel: "Nivel 4", armamento: "Nuclear", imagen: "Nave8", stats: []))
        
        naves[7].stats.append(Stats(tier: "1", salud: "146", dmg: "76", armadura: "1", escudos: "Si"))
        naves[7].stats.append(Stats(tier: "2", salud: "157", dmg: "80", armadura: "2", escudos: "Si"))
        naves[7].stats.append(Stats(tier: "3", salud: "189", dmg: "99", armadura: "3", escudos: "Si"))
        
        naves.append(Nave(nombre: "ARC-56", designacion: "Ataque", id: "075TED3J", nivel: "Nivel 4", armamento: "Cañones", imagen: "Nave9", stats: []))
        
        naves[8].stats.append(Stats(tier: "1", salud: "155", dmg: "85", armadura: "2", escudos: "No"))
        naves[8].stats.append(Stats(tier: "2", salud: "178", dmg: "99", armadura: "2", escudos: "No"))
        naves[8].stats.append(Stats(tier: "3", salud: "194", dmg: "104", armadura: "3", escudos: "Si"))
        
        naves.append(Nave(nombre: "AG-773", designacion: "Cañonera", id: "0PLMCV4T", nivel: "Nivel 5", armamento: "Multiple", imagen: "Nave10", stats: []))
        
        naves[9].stats.append(Stats(tier: "1", salud: "166", dmg: "150", armadura: "2", escudos: "No"))
        naves[9].stats.append(Stats(tier: "2", salud: "189", dmg: "158", armadura: "3", escudos: "No"))
        naves[9].stats.append(Stats(tier: "3", salud: "204", dmg: "178", armadura: "3", escudos: "Si"))
        
        naves.append(Nave(nombre: "IFX-99", designacion: "Caza", id: "2326AEFC", nivel: "Nivel 10", armamento: "Laser", imagen: "Nave11", stats: []))
        
        naves[10].stats.append(Stats(tier: "1", salud: "208", dmg: "128", armadura: "5", escudos: "Si"))
        naves[10].stats.append(Stats(tier: "2", salud: "236", dmg: "157", armadura: "5", escudos: "Si"))
        naves[10].stats.append(Stats(tier: "3", salud: "252", dmg: "189", armadura: "6", escudos: "Si"))
        
        naves.append(Nave(nombre: "F-99", designacion: "Caza", id: "JF5RWRE5", nivel: "Nivel 10", armamento: "Laser", imagen: "Nave12", stats: []))
        
        naves[11].stats.append(Stats(tier: "1", salud: "180", dmg: "135", armadura: "4", escudos: "Si"))
        naves[11].stats.append(Stats(tier: "2", salud: "210", dmg: "170", armadura: "5", escudos: "Si"))
        naves[11].stats.append(Stats(tier: "3", salud: "243", dmg: "205", armadura: "6", escudos: "Si"))
        
        naves.append(Nave(nombre: "BX-99", designacion: "Bombardero", id: "SDGO6GEH", nivel: "Nivel 10", armamento: "Misiles", imagen: "Nave13", stats: []))
        
        naves[12].stats.append(Stats(tier: "1", salud: "199", dmg: "140", armadura: "4", escudos: "Si"))
        naves[12].stats.append(Stats(tier: "2", salud: "207", dmg: "168", armadura: "5", escudos: "Si"))
        naves[12].stats.append(Stats(tier: "3", salud: "230", dmg: "199", armadura: "6", escudos: "Si"))
        
        naves.append(Nave(nombre: "AC-999", designacion: "Cañonera", id: "K5H7C8WP", nivel: "Nivel 10", armamento: "Multiple", imagen: "Nave14", stats: []))
        
        naves[13].stats.append(Stats(tier: "1", salud: "233", dmg: "198", armadura: "4", escudos: "Si"))
        naves[13].stats.append(Stats(tier: "2", salud: "260", dmg: "206", armadura: "5", escudos: "Si"))
        naves[13].stats.append(Stats(tier: "3", salud: "297", dmg: "220", armadura: "6", escudos: "Si"))
        
        naves.append(Nave(nombre: "YGR-99", designacion: "Ataque", id: "433FHT6U", nivel: "Nivel 10", armamento: "Cañones", imagen: "Nave15", stats: []))
        
        naves[14].stats.append(Stats(tier: "1", salud: "205", dmg: "104", armadura: "4", escudos: "Si"))
        naves[14].stats.append(Stats(tier: "2", salud: "245", dmg: "133", armadura: "4", escudos: "Si"))
        naves[14].stats.append(Stats(tier: "3", salud: "287", dmg: "157", armadura: "5", escudos: "Si"))
    }
}

