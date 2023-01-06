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
        let label = UILabel()
        label.text = Resourses.logInText
        label.textColor = .white
        label.font = UIFont(name: "DINAlternate-Bold", size: 17)
        return label
    }()
    
    private var emailLabel: UILabel = {
        let label = UILabel()
        label.text = "E-mail"
        label.font = UIFont(name: "DINAlternate-Bold", size: 20)
        label.textColor = Resourses.Colors.labelBackground
        return label
    }()
    
    private var emailTExtField: ChangePaddingFelds = {
        let field = ChangePaddingFelds()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        field.placeholder = "Enter E-mail"
        return field
    }()
    
    private var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Password"
        label.font = UIFont(name: "DINAlternate-Bold", size: 20)
        label.textColor = Resourses.Colors.labelBackground
        return label
    }()
    
    private var passwordTextField: ChangePaddingFelds = {
        let field = ChangePaddingFelds()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        field.placeholder = "Enter password"
        return field
    }()
    
    private var singInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Resourses.Colors.buttonColor
        button.setTitle("Sing In", for: .normal)
        button.titleLabel?.font = UIFont(name: "DINAlternate-Bold", size: 21)
        button.addTarget(self , action: #selector(signInButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 18
        return button
    }()
    
    private var singUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Resourses.Colors.buttonColor
        button.setTitle("Sing Up", for: .normal)
        button.frame.size.height = 10
        button.titleLabel?.font = UIFont(name: "DINAlternate-Bold", size: 14)
        button.addTarget(self , action: #selector(signUpButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 15
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
            
    }
    
    @objc private func signInButtonTapped() {
        let signInViewComtroller = MenuTimeTable()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil,
        action: nil)
        navigationController?.pushViewController(signInViewComtroller, animated: true)
    }
    
    @objc private func signUpButtonTapped() {
        let signUpViewController = SingUpViewController()
        self.present(signUpViewController, animated: true)
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
        view.setupView(singInButton)
        view.setupView(singUpButton)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backgroundView.heightAnchor.constraint(equalToConstant: 35),
            backgroundView.widthAnchor.constraint(equalToConstant: 70),
            
            logInTextLabel.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            logInTextLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            
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
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),
            
            singInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 50),
            singInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            singInButton.widthAnchor.constraint(equalToConstant: 200),
            singInButton.heightAnchor.constraint(equalToConstant: 45),
            
            singUpButton.topAnchor.constraint(equalTo: singInButton.bottomAnchor, constant: 20),
            singUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            singUpButton.widthAnchor.constraint(equalToConstant: 140),
            singUpButton.heightAnchor.constraint(equalToConstant: 35)
                    
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}

