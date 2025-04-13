//
//  ContentView.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 14/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Calendario", systemImage: "calendar") {
                CalendarView()
            }
            Tab("Turnos", systemImage: "list.number") {
                ShiftsView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(WorkersModel.sample)
}
