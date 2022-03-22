//
//  PersistenciaViewController.swift
//  Informapp
//
//  Created by Natacha on 21-03-22.
//

import Foundation
import UIKit

class PersistenciaViewController : UIViewController {
    
    
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var texto: UILabel!
    
    @IBOutlet weak var nombreUsuario: UITextField!
    
    
    @IBOutlet weak var mostrar: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        prepareText()

    }
    
    func prepareText(){
        titulo.text = PersistenciaModel.titulo
        texto.text = PersistenciaModel.informacion
        
    }
    
    @IBAction func guardar(_ sender: Any) {
        name = nombreUsuario.text!
        UserDefaults.standard.set(name, forKey: "user")
        
                
    }
    
    
    @IBAction func mostrarTexto(_ sender: Any) {
        mostrar.text = UserDefaults.standard.string(forKey: "user")

    
    }
    
    @IBAction func eliminarTexto(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "user")
        mostrar.text = "" 
        
        
        
    }
    
    @IBAction func volver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
