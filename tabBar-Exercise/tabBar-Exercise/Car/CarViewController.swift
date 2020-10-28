//
//  CarViewController.swift
//  tabBar-Exercise
//
//  Created by Mizia Lima on 10/27/20.
//

import UIKit

class CarViewController: UIViewController {
    
    @IBOutlet weak var carTableView: UITableView!
    var arrayUnos = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUnos()

        carTableView.delegate = self
        carTableView.dataSource = self
    }
    
    func loadUnos(){
        arrayUnos.append(Car(modelo: "Uno S", ano: 1992, photoImage: "uno-S"))
        arrayUnos.append(Car(modelo: "Uno CS", ano: 1991, photoImage: "uno-cs"))
        arrayUnos.append(Car(modelo: "Uno Mille", ano: 1984, photoImage: "uno-mille"))
        arrayUnos.append(Car(modelo: "Uno CS-Top", ano: 1988, photoImage: "uno-csTop"))
        arrayUnos.append(Car(modelo: "Fiat Fiorino", ano: 1994, photoImage: "fiorino"))
        arrayUnos.append(Car(modelo: "Fiat Elba/Duna Weekend", ano: 1992, photoImage: "uno-elba"))
        arrayUnos.append(Car(modelo: "Fiat Uno de Firma", ano: 2002, photoImage: "uno-escada"))
        arrayUnos.append(Car(modelo: "Uno S", ano: 1992, photoImage: "uno-S"))
        arrayUnos.append(Car(modelo: "Uno CS", ano: 1991, photoImage: "uno-cs"))
        arrayUnos.append(Car(modelo: "Uno Mille", ano: 1984, photoImage: "uno-mille"))
        arrayUnos.append(Car(modelo: "Uno CS-Top", ano: 1988, photoImage: "uno-csTop"))
        arrayUnos.append(Car(modelo: "Fiat Fiorino", ano: 1994, photoImage: "fiorino"))
        arrayUnos.append(Car(modelo: "Fiat Elba/Duna Weekend", ano: 1992, photoImage: "uno-elba"))
        arrayUnos.append(Car(modelo: "Fiat Uno de Firma", ano: 2002, photoImage: "uno-escada"))
        
        carTableView.reloadData()
    }
}


extension CarViewController: UITableViewDelegate{
    
}

extension CarViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell", for: indexPath) as? CarTableViewCell
        else { return CarTableViewCell() }
        
        let object = arrayUnos[indexPath.row]
        cell.configureCell(car: object)
        
        return cell
        }
    }
