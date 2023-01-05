//
//  CustumBar + Extention.swift
//  DailyTimetable
//
//  Created by Solomon  on 05.01.2023.
//

import UIKit

extension UIViewController {
    
    func createCustomButton(selector: Selector, setIcon: String) -> UIBarButtonItem {
        
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: setIcon), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        return menuBarItem
    }
}
