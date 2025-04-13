//
//  Shift.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 15/3/25.
//

import Foundation

struct Shift: Identifiable, Hashable {
    let id: UUID = .init()
    let name: String
    let start: DateComponents
    let end: DateComponents
}
