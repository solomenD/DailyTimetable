//
//  MenuTimeTable.swift
//  DailyTimetable
//
//  Created by Solomon  on 05.01.2023.
//

import UIKit

class MenuTimeTable: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        configureAppearance()
        setNavigationBar()
    }
    
    private func setNavigationBar() {
        navigationItem.title = "TimeTable"
        
        let logOutButton = createCustomButton(selector: #selector(logOutButtonTapped), setIcon: "rectangle.portrait.and.arrow.forward")

        navigationItem.leftBarButtonItem = logOutButton
    }
    
    @objc private func logOutButtonTapped() {
// Add func LogOut 
        let loginView = LogInViewController()
        loginView.modalPresentationStyle = .fullScreen
        self.present(loginView, animated: true)
    }
    
}

extension MenuTimeTable {
    
    override func setupViews() {
        super.setupViews()
    }
    
    override func constraintViews() {
        super.constraintViews()
    }
    
    override func configureAppearance() {
        super.configureAppearance()
    }
    
}
