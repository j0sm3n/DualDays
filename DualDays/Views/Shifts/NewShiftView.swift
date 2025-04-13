//
//  NewShiftView.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 17/3/25.
//

import SwiftUI

struct NewShiftView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(WorkersModel.self) var model
    @State private var selectedWorker: Worker?
    @State private var shiftName: String = ""
    @State private var shiftStartTime: Date = Date()
    @State private var shiftEndTime: Date = Date()

    var body: some View {
        Form {
            Section("Agente") {
                Picker("Nombre", selection: $selectedWorker) {
                    ForEach(model.workers) { worker in
                        Text(worker.name).tag(worker)
                    }
                }
            }
            
            Section("Turno") {
                TextField("Nombre", text: $shiftName)
                DatePicker("Inicio", selection: $shiftStartTime, displayedComponents: .hourAndMinute)
                DatePicker("Fin", selection: $shiftEndTime, displayedComponents: .hourAndMinute)
            }
            
            Button("Guardar") {
                dismiss()
            }
        }
    }
}

#Preview {
    NewShiftView()
        .environment(WorkersModel.sample)
}
