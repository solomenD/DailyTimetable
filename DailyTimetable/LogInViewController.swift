//
//  ViewController.swift
//  DailyTimetable
//
//  Created by Solomon  on 03.01.2023.
//

import UIKit

class LogInViewController: BaseController {
    
    private var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = Resourses.Colors.labelBackground
        view.layer.cornerRadius = 15
        return view
    }()
    
    private var logInTextLabel: UILabel = {
        let lable = UILabel()
        lable.text = Resourses.logInText
        lable.textColor = .white
        return lable
    }()
    
    private var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter email"
        return label
    }()
    
    private var emailTExtField: UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        return field
    }()
    
    private var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter password"
        return label
    }()
    
    private var passwordTextField: UITextField = {
        let field = UITextField()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        return field
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
}

extension LogInViewController {
    override func setupViews() {
        super.setupViews()
        view.setupView(backgroundView)
        view.setupView(logInTextLabel)
        view.setupView(emailTExtField)
        view.setupView(passwordTextField)
        view.setupView(emailLabel)
        view.setupView(passwordLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backgroundView.heightAnchor.constraint(equalToConstant: 30),
            backgroundView.widthAnchor.constraint(equalToConstant: 70),
            
            logInTextLabel.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 4),
            logInTextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logInTextLabel.heightAnchor.constraint(equalToConstant: 22),
            
            emailLabel.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 70),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            emailLabel.heightAnchor.constraint(equalToConstant: 20),
            
            emailTExtField.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 100),
            emailTExtField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            emailTExtField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            emailTExtField.heightAnchor.constraint(equalToConstant: 30),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTExtField.bottomAnchor, constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            passwordLabel.heightAnchor.constraint(equalToConstant: 20),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTExtField.bottomAnchor, constant: 40),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}

