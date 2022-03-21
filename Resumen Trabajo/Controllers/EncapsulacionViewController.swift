//
//  EncapsulacionViewController.swift
//  Informapp
//
//  Created by Natacha on 21-03-22.
//

import Foundation
import UIKit



class EncapsulacionViewController : UIViewController {
    
        
    @IBOutlet weak var titulo: UILabel!
    
    @IBOutlet weak var definicion: UILabel!
    
    override func viewDidLoad() {
     
        prepareTexts()
        
    }
   func prepareTexts(){
       
       titulo.text = EncapsulacionModel.titulo
       definicion.text = EncapsulacionModel.definicion
    }
    
    @IBAction func volver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}


