//
//  MenuTimeTable.swift
//  DailyTimetable
//
//  Created by Solomon  on 05.01.2023.
//

import UIKit

class MenuTimeTable: BaseController {
    
    private var dayLable: UILabel = {
        let label = UILabel()
        label.text = "Today"
        label.font = UIFont(name: "DINAlternate-Bold", size: 40)
        label.textColor = Resourses.Colors.labelBackground
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var wellcomeLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "DINAlternate-Bold", size: 15)
        label.textColor = Resourses.Colors.labelBackground
        label.text = "Wellcome, Solomon"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var addTaskButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 15
        button.addTarget(self, action: #selector(addTaskButtonTapped), for: .touchUpInside)
        button.setTitle("Add Task", for: .normal)
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.imageView?.tintColor = .white
        button.titleLabel?.font = UIFont(name: "DINAlternate-Bold", size: 15)
        button.titleLabel?.tintColor = .white
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var elementsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar()
        
    }
    
    @objc private func addTaskButtonTapped() {
        print("addtask")
    }
    
    private func setNavigationBar() {
        
        guard let navigationController = navigationController else { return }

        navigationController.navigationBar.backIndicatorImage = UIImage(systemName: "arrow.up.and.person.rectangle.portrait")
        navigationController.navigationBar.backIndicatorTransitionMaskImage = UIImage(systemName: "arrow.up.and.person.rectangle.portrait")
        //MARK: - dont work
        navigationController.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil,
        action: nil)
        
        navigationController.navigationBar.tintColor = Resourses.Colors.labelBackground
    }
    
}

extension MenuTimeTable {
    
    override func setupViews() {
        super.setupViews()
        
        elementsStackView = UIStackView(arrangedSubviews: [dayLable, wellcomeLable],
                                        axis: .vertical,
                                        spacing: 10,
                                        distribution: .fillProportionally)
        
        view.setupView(elementsStackView)
        view.setupView(addTaskButton)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
        
            elementsStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            elementsStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            elementsStackView.widthAnchor.constraint(equalToConstant: 200),
            elementsStackView.heightAnchor.constraint(equalToConstant: 70),
            
            addTaskButton.centerYAnchor.constraint(equalTo: elementsStackView.centerYAnchor),
            addTaskButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            addTaskButton.widthAnchor.constraint(equalToConstant: 120),
            addTaskButton.heightAnchor.constraint(equalToConstant: 30)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
}
