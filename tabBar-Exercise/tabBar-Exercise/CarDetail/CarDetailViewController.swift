//
//  CarDetailViewController.swift
//  tabBar-Exercise
//
//  Created by Mizia Lima on 10/28/20.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    @IBOutlet weak var imageCar: UIImageView!
    @IBOutlet weak var labelAno: UILabel!
    @IBOutlet weak var labelModelo: UILabel!
    
    var car: Car?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detalhes do Carro"
        imageCar.image = UIImage(named: car!.photoImage)
        labelModelo.text = car?.modelo
        labelAno.text = String(car!.ano)
    }
}
