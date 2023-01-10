//
//  AddTaskViewController.swift
//  DailyTimetable
//
//  Created by Solomon  on 09.01.2023.
//

import UIKit

class AddTaskViewController: BaseController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true

        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false

    }
    
}

extension AddTaskViewController {
    override func setupViews() {
        super.setupViews()

    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
                    
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
    }
}

