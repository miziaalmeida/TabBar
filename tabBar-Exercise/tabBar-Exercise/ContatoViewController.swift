//
//  ContatoViewController.swift
//  tabBar-Exercise
//
//  Created by Mizia Lima on 10/27/20.
//

import UIKit

class ContatoViewController: UIViewController {
    
    fileprivate let aplicattion = UIApplication.shared
    
    @IBAction func acessoTelefone(_ sender: UIButton){
        let phoneNumber = "0123456789"
        if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {

            let alert = UIAlertController(title: ("Ligar para " + phoneNumber + "?"), message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ligar para", style: .default, handler: { (action) in
                UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
            }))

            alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func acessoEmail(_ sender: Any){
        UIApplication.shared.open(URL(string: "mailto:email@com.br")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func acessoSite(_ sender: Any){
        UIApplication.shared.open(URL(string: "https://www.google.com")!)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
