//
//  PolimorfismoViewController.swift
//  Informapp
//
//  Created by Natacha on 21-03-22.
//

import Foundation
import UIKit

class PolimorfismoViewController : UIViewController {
    
    
    
    @IBOutlet weak var titulo: UILabel!
    
    
    @IBOutlet weak var definicion: UILabel!
    
    override func viewDidLoad() {
        prepateTexts()
        
    }
    
    func prepateTexts(){
        titulo.text = PolimorfismoModel.titulo
        definicion.text = PolimorfismoModel.definicion
        
    }
    
    
    @IBAction func volver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
