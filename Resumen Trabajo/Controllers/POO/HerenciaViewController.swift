

import Foundation

import UIKit

class HerenciaViewController: UIViewController {
    
    
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var definicion: UILabel!
    
    
    override func viewDidLoad() {
        prepareTexts()
        
    }
    func prepareTexts() {
        
        titulo.text = HerenciaModel.titulo
        
        definicion.text = HerenciaModel.definicion
    }

    
    
    @IBAction func volverHerencia(_ sender: Any) {
        dismiss(animated: true, completion: nil)
            
        }
        
    
    

        
}
