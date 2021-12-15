//
//  WelcomeViewController.swift
//  HW3
//
//  Created by Dmitrii Onegin on 15.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeTextField: UILabel!
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeTextField.text = "Welcome, " + userName + "!"
    }

    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
}

