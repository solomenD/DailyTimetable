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

//MARK: - Chechout Bolds, Cool!)

extension UIView {
    func chekFonts() {
        UIFont.familyNames.forEach ({ familyName in
            let fontNames = UIFont.fontNames (forFamilyName: familyName)
            print (familyName, fontNames)
        })
    }
}
