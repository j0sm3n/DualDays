//
//  DualDaysApp.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 14/3/25.
//

import SwiftUI

@main
struct DualDaysApp: App {
    @State private var workers = WorkersModel()

    var body: some Scene {
        WindowGroup {
            if workers.workerOne.name.isEmpty || workers.workerTwo.name.isEmpty {
                WorkersView()
            } else {
                ContentView()
            }
        }
        .environment(workers)
    }
}
