//
//  Calendar + Extention.swift
//  DailyTimetable
//
//  Created by Solomon  on 07.01.2023.
//

import Foundation


extension Calendar {
    var currentWeek: [WeekDay]{
        guard let firstWeekDay = self.dateInterval (of: .weekOfMonth, for: Date ())?.start
        else{return []}
        var week: [WeekDay] = []
        for index in 0..<7 {
            if let day = self.date(byAdding: .day, value: index, to: firstWeekDay){
                let formater = DateFormatter()
                formater.dateFormat = "EEEE"
                let weekDaySymbol: String = formater.string(from: day)
                let isToday = self.isDateInToday(day)
                week.append(.init(string: weekDaySymbol, date: day))
            }
        }
        return week
    }
    // - Used to Store Data of Each Week Day
    struct WeekDay: Identifiable {
        var id: UUID = .init()
        var string: String
        var date: Date
        var isToday: Bool = false
        
    }
}
