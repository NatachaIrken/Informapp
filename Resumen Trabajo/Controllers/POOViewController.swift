//
//  POOViewController.swift
//  Informapp
//
//  Created by Natacha on 18-03-22.
//

import Foundation

import UIKit

class POOViewController: UIViewController {
    
    
    @IBOutlet weak var titulo: UILabel!
    
    
    @IBOutlet weak var descripcion: UILabel!
    
    override func viewDidLoad() {
        prepareTexts()
        
    }
    
    func prepareTexts() {
        
        titulo.text = POOModel.titulo
        descripcion.text = POOModel.descripcion
        
        
    }
    
    
    @IBAction func volver(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
