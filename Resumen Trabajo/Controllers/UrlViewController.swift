//
//  UrlViewController.swift
//  Informapp
//
//  Created by Natacha on 27-03-22.
//

import Foundation
import UIKit

class UrlViewController : UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    
    
    
    @IBOutlet weak var titulo: UILabel!
    var usuarios = [UserModel]()
    
    
    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUsers()
    }
    
    func getUsers(){

        guard let datos = URL(string: "https://jsonplaceholder.typicode.com/users")
        else {return}
        let url = URLRequest(url: datos)
        
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            do {
                self.usuarios = try JSONDecoder().decode([UserModel].self, from: data!)
                DispatchQueue.main.async {
                    self.tabla.reloadData()
                }
            }catch let error as NSError{
                print("no carga Json" , error.localizedDescription)
            }
        } .resume()
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usuarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            let cell = tabla.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
            let user = usuarios[indexPath.row]
            cell.textLabel?.text = user.name
            cell.detailTextLabel?.text = user.email
            return cell
        
    }

    
}
