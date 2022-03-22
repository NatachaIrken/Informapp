//
//  CamposTextoViewController.swift
//  Informapp
//
//  Created by Natacha on 22-03-22.
//

import Foundation
import UIKit

class CamposTextoViewController : UIViewController {
    
   
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var informacion: UILabel!
    
    @IBOutlet weak var textoAmostrar: UITextField!
    
    var textoTexfield = ""
    
    
    @IBOutlet weak var mostrar2: UILabel!
    
    
    override func viewDidLoad() {
        prepareText()
    }
    
    func prepareText() {
        titulo.text = CamposTextoModel.titulo
        informacion.text = CamposTextoModel.informacion
    }
    
    @IBAction func mostrar(_ sender: Any) {
        
        textoTexfield = textoAmostrar.text!
        
        mostrar2.text = textoTexfield
    }
    
    
    @IBAction func volver(_ sender:Any) {
        self.dismiss(animated: true, completion: nil)
    
    }
    
    
    
    
}
