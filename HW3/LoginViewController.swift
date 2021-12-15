//
//  LoginViewController.swift
//  HW3
//
//  Created by Dmitrii Onegin on 15.12.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.userName = userNameTextField.text
    }
    
    @IBAction func logInAction() {
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {

        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

