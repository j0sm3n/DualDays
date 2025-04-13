//
//  DateComponents+Extensions.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 17/3/25.
//

import Foundation

extension DateComponents {
    var formattedTime: String {
        let hour = self.hour ?? 0
        let minute = self.minute ?? 0
        return String(format: "%02d:%02d", hour, minute)
    }
}
