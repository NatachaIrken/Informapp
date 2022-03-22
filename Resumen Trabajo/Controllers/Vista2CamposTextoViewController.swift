//
//  vista2CamposTextoViewController.swift
//  Informapp
//
//  Created by Natacha on 22-03-22.
//

import Foundation
import UIKit

class Vista2CamposTextoViewController : UIViewController {
    
    
    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var nombresApellidos: UILabel!

    
    @IBOutlet weak var textos: UITextField!
    
    
    @IBOutlet weak var apellido: UITextField!
    
        
    override func viewDidLoad() {
        prepareText()
    }
    func prepareText() {
        nombre.text = Campo2TextoModel.nombre
        
    }
    
    
    @IBAction func mostrar(_ sender: Any) {
        
        nombresApellidos.text = textos.text!
        nombresApellidos.text?.append(" ")
        nombresApellidos.text?.append(apellido.text!)
                
                
        
    }
    
    
    @IBAction func volver(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
}

