//
//  Worker.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 15/3/25.
//

import Foundation

struct Worker: Identifiable, Hashable {
    let id: UUID = .init()
    var name: String
    var shifts: [Shift]
    
    init() {
        name = ""
        shifts = []
    }
    
    init(name: String, shifts: [Shift]) {
        self.name = name
        self.shifts = shifts
    }
}
