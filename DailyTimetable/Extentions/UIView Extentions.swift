//
//  UIView Extentions.swift
//  DailyTimetable
//
//  Created by Solomon  on 03.01.2023.
//

import UIKit

extension UIView {
    
    func setupView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
