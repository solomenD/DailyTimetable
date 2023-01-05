//
//  ChangePaddingFelds.swift
//  DailyTimetable
//
//  Created by Solomon  on 05.01.2023.
//

import UIKit
class ChangePaddingFelds: UITextField {
    
    let lefttPadding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init? (coder: NSCoder) {
        fatalError ("init (cooyr:) has not been implemented")
    }
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset (by: lefttPadding)
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset (by: lefttPadding)
    }
}
