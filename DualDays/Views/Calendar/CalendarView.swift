//
//  CalendarView.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 14/3/25.
//

import SwiftUI

struct CalendarView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // Week day labels
                HStack(spacing: 0) {
                    ForEach(Date.weekdaySymbols, id: \.self) { day in
                        Text(day)
                            .font(.caption)
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.secondary)
                    }
                }
                .frame(height: 24, alignment: .top)
                
                // Calendar grid
                LazyVGrid(columns: Array(repeating: GridItem(spacing: 0), count: 7), spacing: 0) {
                    ForEach(1..<32, id: \.self) { day in
                        DayView(day: day)
                            .frame(maxWidth: .infinity)
                            .frame(height: 120, alignment: .top)
                    }
                }
            }
            .padding()
            .navigationTitle("Marzo 2025")
        }
    }
}

#Preview {
    CalendarView()
}
