//
//  CarTableViewCell.swift
//  tabBar-Exercise
//
//  Created by Mizia Lima on 10/27/20.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var modeloLabel: UILabel!
    @IBOutlet weak var anoLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(car: Car) {
        carImage.image = UIImage(named: car.photoImage)
        modeloLabel.text = car.modelo
        anoLabel.text = String(car.ano)
    }
}
