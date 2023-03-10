//
//  MenuTimeTable.swift
//  DailyTimetable
//
//  Created by Solomon  on 05.01.2023.
//

import UIKit

class MenuTimeTable: BaseController {
    
    private var tabelView: UITableView = {
        var view = UITableView()
        view.backgroundColor = Resourses.Colors.background
        return view
    }()
    
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
    
    private var dateLabel: UILabel = {
       let label = UILabel()
        let dateString = Date()
        var formater = DateFormatter()
        formater.dateFormat = "MMM YYYY"
        label.text = formater.string(from: dateString)
        label.font = UIFont(name: "DINAlternate-Bold", size: 20)
        label.textColor = Resourses.Colors.labelBackground
        print(label.text ?? "")
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
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let calendar = Calendar.current
    
    private var stackView = UIStackView()
    
    private var elementsStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.delegate = self
        tabelView.dataSource = self
        setNavigationBar()
    }
    
    @objc private func addTaskButtonTapped() {
        let addTaskViewController = AddTaskViewController()
        navigationController?.pushViewController(addTaskViewController, animated: true)
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
        view.setupView(dateLabel)
        view.setupView(stackView)
        view.setupView(tabelView)
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
            addTaskButton.heightAnchor.constraint(equalToConstant: 30),
            
            dateLabel.topAnchor.constraint(equalTo: elementsStackView.bottomAnchor, constant: 20),
            dateLabel.leadingAnchor.constraint(equalTo: elementsStackView.leadingAnchor),
            
            stackView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 15),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            stackView.heightAnchor.constraint(equalToConstant: 47),
            
            tabelView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20),
            tabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabelView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols
        
        if calendar.firstWeekday == 1 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            let view = WeekStack()
            view.configure(with: index, and: name, selector: #selector(stackButtonTapped))
            stackView.addArrangedSubview(view)
            
        }
    }
    @objc func stackButtonTapped() {
        print("Tamed",index)
    }
}

extension MenuTimeTable: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "UITableViewCell")
        cell.backgroundColor = Resourses.Colors.background
        return cell
    }
    
    
}

extension MenuTimeTable: UITableViewDelegate {
    
}
