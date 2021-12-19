//
//  AboutMeViewController.swift
//  HW3
//
//  Created by Dmitrii Onegin on 19.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var nextButtonLabel: UIBarButtonItem!
    @IBOutlet weak var returnButtonLabel: UIBarButtonItem!
    
    @IBOutlet weak var titleLabel: UINavigationItem!
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = user.person.resume
        titleLabel.title = TitleNC.resume.rawValue
        setIsNotEnabledReturnButton()
        
    }
    override func viewDidLayoutSubviews() {
        textLabel.sizeToFit()
    }
    
    
    @IBAction func nextButtton() {
        switch textLabel.text {
        case user.person.resume:
            titleLabel.title = TitleNC.task.rawValue
            textLabel.text = user.person.task
            setIsEnabledReturnButton()
        case user.person.task:
            titleLabel.title = TitleNC.team.rawValue
            textLabel.text = user.person.team
            setIsNotEnabledNextButton()
        default:
            return
        }
    }
    
    @IBAction func returnButton() {
        switch textLabel.text {
        case user.person.task:
            setIsNotEnabledReturnButton()
            titleLabel.title = TitleNC.resume.rawValue
            textLabel.text = user.person.resume
        case user.person.team:
            titleLabel.title = TitleNC.task.rawValue
            textLabel.text = user.person.task
            setIsEnabledNextButton()
        default:
            return
        }
    }
    
}

extension AboutMeViewController {
    
    private func setIsEnabledReturnButton() {
        returnButtonLabel.title = "Назад"
        returnButtonLabel.isEnabled = true
    }
    private func setIsNotEnabledReturnButton() {
        returnButtonLabel.title = ""
        returnButtonLabel.isEnabled = false
    }
    private func setIsEnabledNextButton() {
        nextButtonLabel.title = "Далее"
        nextButtonLabel.isEnabled = true
    }
    private func setIsNotEnabledNextButton() {
        nextButtonLabel.title = ""
        nextButtonLabel.isEnabled = false
    }
    
}


extension AboutMeViewController {
    enum TitleNC: String {
        case resume = "Резюме"
        case task = "Цели"
        case team = "Команда"
    }
}


