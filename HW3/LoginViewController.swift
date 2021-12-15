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
    
    let userName = "User"
    let password = "password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.userName = userNameTextField.text
    }
    
    @IBAction func logInAction() {
        guard let inputName = userNameTextField.text, inputName == userName else {
            showAlert(title: "You name is not right", message: "Plase enter your name")
            userNameTextField.text = ""
            passwordTextField.text = ""
            return
        }
        guard let inputPassword = passwordTextField.text, inputPassword == password else {
            showAlert(title: "You password is not right", message: "Plase enter your password")
            passwordTextField.text = ""
            return
        }
        
    }
    
    @IBAction func forgotNameAlert() {
        showAlert(title: "Forgot Name?", message: "You name: \(userName)")
    }
    
    @IBAction func forgotPasswordAlert() {
        showAlert(title: "Forgot password?", message: "You password: \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {

        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - extension
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
           
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

