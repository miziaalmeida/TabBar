//
//  GoogleViewController.swift
//  tabBar-Exercise
//
//  Created by Mizia Lima on 10/27/20.
//

import UIKit

class GoogleViewController: UIViewController {
    
    @IBAction func googleButton(_ sender: Any){
        UIApplication.shared.open(URL(string: "https://www.google.com")!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
