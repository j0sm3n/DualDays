//
//  PreviewData.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 17/3/25.
//

import Foundation

extension Worker {
    static var previewWorkerOne: Worker = .init(name: "Jose", shifts: .previewWorkerOne)
    static var previewWorkerTwo: Worker = .init(name: "Itziar", shifts: .previewWorkerTwo)
}

extension [Shift] {
    static var previewWorkerOne: [Shift] {
        [
            .init(name: "1", start: DateComponents(hour: 5, minute: 5), end: DateComponents(hour: 11, minute: 25)),
            .init(name: "2", start: DateComponents(hour: 5, minute: 15), end: DateComponents(hour: 12, minute: 39)),
            .init(name: "3", start: DateComponents(hour: 6, minute: 20), end: DateComponents(hour: 14, minute: 39)),
            .init(name: "4", start: DateComponents(hour: 9, minute: 20), end: DateComponents(hour: 17, minute: 39)),
            .init(name: "5", start: DateComponents(hour: 14, minute: 20), end: DateComponents(hour: 22, minute: 39)),
            .init(name: "6", start: DateComponents(hour: 17, minute: 9), end: DateComponents(hour: 23, minute: 29)),
            .init(name: "7", start: DateComponents(hour: 15, minute: 20), end: DateComponents(hour: 23, minute: 39)),
            .init(name: "8", start: DateComponents(hour: 5, minute: 10), end: DateComponents(hour: 13, minute: 45)),
            .init(name: "9", start: DateComponents(hour: 14, minute: 10), end: DateComponents(hour: 22, minute: 10)),
        ]
    }
    
    static var previewWorkerTwo: [Shift] {
        [
            .init(name: "1A", start: DateComponents(hour: 5, minute: 20), end: DateComponents(hour: 12, minute: 50)),
            .init(name: "1B", start: DateComponents(hour: 5, minute: 20), end: DateComponents(hour: 12, minute: 50)),
            .init(name: "1C", start: DateComponents(hour: 6, minute: 20), end: DateComponents(hour: 13, minute: 50)),
            .init(name: "1D", start: DateComponents(hour: 7, minute: 20), end: DateComponents(hour: 14, minute: 50)),
            .init(name: "2A", start: DateComponents(hour: 5, minute: 20), end: DateComponents(hour: 12, minute: 50)),
            .init(name: "2B", start: DateComponents(hour: 5, minute: 20), end: DateComponents(hour: 12, minute: 50)),
            .init(name: "2C", start: DateComponents(hour: 6, minute: 20), end: DateComponents(hour: 13, minute: 50)),
            .init(name: "2D", start: DateComponents(hour: 7, minute: 20), end: DateComponents(hour: 14, minute: 50)),
            .init(name: "3A", start: DateComponents(hour: 8, minute: 20), end: DateComponents(hour: 15, minute: 50)),
            .init(name: "3B", start: DateComponents(hour: 11, minute: 20), end: DateComponents(hour: 18, minute: 50)),
            .init(name: "3C", start: DateComponents(hour: 7, minute: 20), end: DateComponents(hour: 14, minute: 50)),
            .init(name: "3D", start: DateComponents(hour: 10, minute: 20), end: DateComponents(hour: 17, minute: 50)),
            .init(name: "4A", start: DateComponents(hour: 8, minute: 20), end: DateComponents(hour: 15, minute: 50)),
            .init(name: "4B", start: DateComponents(hour: 11, minute: 20), end: DateComponents(hour: 18, minute: 50)),
            .init(name: "4C", start: DateComponents(hour: 7, minute: 20), end: DateComponents(hour: 14, minute: 50)),
            .init(name: "4D", start: DateComponents(hour: 10, minute: 20), end: DateComponents(hour: 17, minute: 50)),
        ]
    }
}
