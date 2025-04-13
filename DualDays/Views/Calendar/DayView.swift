//
//  DayView.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 14/3/25.
//

import SwiftUI

struct DayView: View {
    let day: Int
    let size: CGSize = .init(width: 48, height: 40)
    var shiftPerson1: String { (Worker.previewWorkerOne.shifts.map(\.name) + ["D"]).randomElement()! }
    var shiftPerson2: String { (Worker.previewWorkerTwo.shifts.map(\.name) + ["D"]).randomElement()! }

    var body: some View {
        VStack(spacing: 2) {
            Text("\(day)")
                .font(.caption)
                .foregroundColor(.secondary)
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow.opacity(0.2))
                .frame(width: size.width, height: size.height)
                .overlay {
                    Text(shiftPerson1)
                }
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.2))
                .frame(width: size.width, height: size.height)
                .overlay {
                    Text(shiftPerson2)
                }
        }
    }
}

#Preview {
    DayView(day: 23)
}
