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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBar()
        
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
        
        view.setupView(dayLable)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
        
            dayLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            dayLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
}
