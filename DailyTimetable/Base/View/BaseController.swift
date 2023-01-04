//
//  BaseController.swift
//  DailyTimetable
//
//  Created by Solomon  on 03.01.2023.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
}

@objc extension BaseController {
    
    func setupViews() {
        
    }
    
    func constraintViews() {
        
    }
    
    func configureAppearance() {
        view.backgroundColor = Resourses.Colors.background
    }
}
