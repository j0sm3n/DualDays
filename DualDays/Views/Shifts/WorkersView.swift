//
//  WorkersView.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 19/3/25.
//

import SwiftUI
import Observation

struct WorkersView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(WorkersModel.self) var model
    
    var body: some View {
        @Bindable var model = model
        
        NavigationStack {
            Form {
                TextField(model.workerOne.name, text: $model.workers[0].name)
                TextField(model.workerTwo.name, text: $model.workers[1].name)
                Button("Guardar") {
                    dismiss()
                }
            }
            .navigationTitle("Agentes")
            .contentMargins(.top, 24)
        }
    }
}

#Preview {
    WorkersView()
        .environment(WorkersModel.sample)
}
