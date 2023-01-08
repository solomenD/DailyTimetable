//
//  WeekStack.swift
//  DailyTimetable
//
//  Created by Solomon  on 07.01.2023.
//

import UIKit

extension MenuTimeTable {
    final class WeekStack: WABaseView {
        
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        private let button = UIButton()
        
        func configure(with index: Int, and name: String) {
            
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Date.calendar.component(.day, from: currentDay)
            
            let isTooday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isTooday ? .gray : Resourses.Colors.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isTooday ? .white : .gray
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isTooday ? .white : .gray

        }
        @objc func stackButtonTapped() {
            print("Tamed")
        }
    }
}

extension MenuTimeTable.WeekStack {
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
        stackView.addArrangedSubview(button)
        
    }
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
        
    }
    override func configureAppearance() {
        super .configureAppearance()

        backgroundColor = .red
        
        layer.cornerRadius = 5
        layer.masksToBounds = true

        dateLabel.font = UIFont(name: "DINAlternate-Bold", size: 15)
        dateLabel.textAlignment = .center

        nameLabel.font = UIFont(name: "DINAlternate-Bold", size: 10)
        nameLabel.textAlignment = .center

        stackView.spacing = 3
        stackView.axis = .vertical
        
        button.addTarget(stackView, action: #selector(stackButtonTapped), for: .touchUpInside)

    }
    
}
