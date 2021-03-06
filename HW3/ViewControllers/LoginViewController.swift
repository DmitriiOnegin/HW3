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
    
//    let userName = "User"
//    let password = "password"
    let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.tag = 0
        passwordTextField.tag = 1
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.children
        for viewController in viewControllers {
                    if let welcomeVC = viewController as? WelcomeViewController {
                        welcomeVC.userName = user.person.firstName
                        
                    } else if let navigationVC = viewController as? UINavigationController {
                        
                        let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                        aboutUserVC.user = user
                    }
                }
       
    }
    
    
    @IBAction func logInAction() {
        guard let inputName = userNameTextField.text, inputName == user.userName else {
            showAlert(title: "You name is not right", message: "Plase enter your name")
            userNameTextField.text = ""
            passwordTextField.text = ""
            return
        }
        guard let inputPassword = passwordTextField.text, inputPassword == user.password else {
            showAlert(title: "You password is not right", message: "Plase enter your password")
            passwordTextField.text = ""
            return
        }
        
    }
    
    @IBAction func forgotNameAlert() {
        showAlert(title: "Forgot Name?", message: "You name: \(user.userName)")
    }
    
    @IBAction func forgotPasswordAlert() {
        showAlert(title: "Forgot password?", message: "You password: \(user.password)")
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

extension LoginViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.tag == 0 {
            
            passwordTextField.becomeFirstResponder()
            
        } else {
            
            logInAction()
            performSegue(withIdentifier: "main", sender: self)
        }
        
        return false
    }
}
