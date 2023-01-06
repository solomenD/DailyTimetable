//
//  SingUpViewController.swift
//  DailyTimetable
//
//  Created by Solomon  on 05.01.2023.
//

import UIKit

class SingUpViewController: BaseController {
    
    private var registrLabel: UILabel = {
        let label = UILabel()
        label.text = "Registeretion"
        label.font = UIFont(name: "DINAlternate-Bold", size: 22)
        label.textColor = Resourses.Colors.labelBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var backgroundView: UIView = {
       let view = UIView()
        view.backgroundColor = Resourses.Colors.background
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var firstNameTextField: ChangePaddingFelds = {
        let field = ChangePaddingFelds()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        field.placeholder = "First Name"
//Change higth
        field.frame.size.width = 100
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private var firstNameLable: UILabel = {
       let label = UILabel()
        label.text = "Name is seccess"
        label.font = UIFont(name: "DINAlternate-Bold", size: 18)
        label.textColor = Resourses.Colors.labelBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var secondNameTextField: ChangePaddingFelds = {
        let field = ChangePaddingFelds()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        field.placeholder = "Second Name"
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private var secondNameLable: UILabel = {
       let label = UILabel()
        label.text = "Second Name is seccess"
        label.font = UIFont(name: "DINAlternate-Bold", size: 18)
        label.textColor = Resourses.Colors.labelBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var phoneTextField: ChangePaddingFelds = {
        let field = ChangePaddingFelds()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        field.placeholder = "Enter phone number"
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private var phoneNumberLable: UILabel = {
       let label = UILabel()
        label.text = "Phone is correct"
        label.font = UIFont(name: "DINAlternate-Bold", size: 18)
        label.textColor = Resourses.Colors.labelBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var emailTextField: ChangePaddingFelds = {
        let field = ChangePaddingFelds()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        field.placeholder = "Enter E-mail"
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private var emailNameLable: UILabel = {
       let label = UILabel()
        label.text = "E-mail is seccess"
        label.font = UIFont(name: "DINAlternate-Bold", size: 18)
        label.textColor = Resourses.Colors.labelBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var passwordTextField: ChangePaddingFelds = {
        let field = ChangePaddingFelds()
        field.backgroundColor = .white
        field.layer.cornerRadius = 10
        field.placeholder = "Enter password"
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    private var passwordNameLable: UILabel = {
       let label = UILabel()
        label.text = "Password is seccess"
        label.font = UIFont(name: "DINAlternate-Bold", size: 18)
        label.textColor = Resourses.Colors.labelBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var signUpButton:UIButton = {
        let button = UIButton()
        button.backgroundColor = Resourses.Colors.buttonColor
        button.setTitle("Sign Up", for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private var elementsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc private func signInButtonTapped() {
        
    }
    
}

extension SingUpViewController {
    override func setupViews() {
        super.setupViews()
        
        title = "Sign Up"
        
        view.setupView(scrollView)
        scrollView.addSubview(backgroundView)
        
        elementsStackView = UIStackView(arrangedSubviews: [firstNameTextField,
                                                           firstNameLable,
                                                           secondNameTextField,
                                                          secondNameLable,
                                                           phoneTextField,
                                                           phoneNumberLable,
                                                           emailTextField,
                                                           emailNameLable,
                                                          passwordTextField,
                                                          passwordNameLable],
                                        axis: .vertical,
                                        spacing: 10,
                                        distribution: .equalSpacing)
        
        backgroundView.addSubview(elementsStackView)
        backgroundView.addSubview(registrLabel)
        backgroundView.addSubview(signUpButton)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),

            backgroundView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            backgroundView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor),

            elementsStackView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            elementsStackView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            elementsStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            elementsStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            
            registrLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            registrLabel.bottomAnchor.constraint(equalTo: elementsStackView.topAnchor, constant: -30),
            
            signUpButton.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: elementsStackView.bottomAnchor, constant: 30),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
            signUpButton.widthAnchor.constraint(equalToConstant: 300)
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
}
