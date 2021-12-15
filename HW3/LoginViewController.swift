//
//  LoginViewController.swift
//  HW3
//
//  Created by Dmitrii Onegin on 15.12.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let userName = "User"
    let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.tag = 0
        passwordTextField.tag = 1
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.userName = userNameTextField.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 0 {
            
            let nextTag = textField.tag + 1
            
            let nextResponder = textField.superview?.viewWithTag(nextTag) as UIResponder?
            
            if nextResponder != nil {
                
                nextResponder?.becomeFirstResponder()
            } else {
                
                textField.resignFirstResponder()
            }
        } else {
            
            logInAction()
            performSegue(withIdentifier: "main", sender: self)
        }
        
        return false
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

