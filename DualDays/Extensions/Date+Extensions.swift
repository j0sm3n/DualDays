//
//  Date+Extensions.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 14/3/25.
//

import Foundation

extension Date {
    /// Week days starting by monday
    static var weekdaySymbols: [String] {
        Calendar.current.shortWeekdaySymbols.dropFirst() + [Calendar.current.shortWeekdaySymbols.first!] //standaloneWeekdaySymbols.dropFirst() + [Calendar.current.standaloneWeekdaySymbols.first!]
    }
    
    /// Year number from date
    var year: Int {
        Calendar.current.component(.year, from: self)
    }
    
    /// Current month
    var currentMonth: Int {
        Calendar.current.component(.month, from: self)
    }
    
    /// Hour and minute string
    var formatedTime: String {
        self.formatted(.dateTime.hour().minute())
    }
    
    /// Hour and minute DateComponents
    var dateComponents: DateComponents {
        Calendar.current.dateComponents([.hour, .minute], from: self)
    }
}
