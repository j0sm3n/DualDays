//
//  ShiftsView.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 15/3/25.
//

import Observation
import SwiftUI

struct ShiftsView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(WorkersModel.self) var model
    @State private var addNewShift: Bool = false
    @State private var selectedWorker: Worker?
    
    var body: some View {
        NavigationStack {
            List {
//                ForEach(model.workers.indices, id: \.self) { index in
//                    Section {
//                        ForEach(model.workers[index].shifts) { shift in
//                            LabeledContent {
//                                HStack {
//                                    Label(shift.start.formattedTime, systemImage: "arrow.up.right.circle")
//                                    Divider()
//                                    Label(shift.end.formattedTime, systemImage: "arrow.down.right.circle")
//                                }
//                                .fontDesign(.monospaced)
//                            } label: {
//                                Text(shift.name)
//                                    .font(.title3)
//                                    .bold()
//                            }
//                        }
//                    } header: {
//                        HStack {
//                            Text(model.workers[index].name)
//                            Spacer()
//                            Button {
//                                selectedWorker = index
//                            } label: {
//                                Image(systemName: "square.and.pencil")
//                            }
//                        }
//                    }
//                }
                ForEach(model.workers) { worker in
                    Section {
                        ForEach(worker.shifts) { shift in
                            LabeledContent {
                                HStack {
                                    Label(shift.start.formattedTime, systemImage: "arrow.up.right.circle")
                                    Divider()
                                    Label(shift.end.formattedTime, systemImage: "arrow.down.right.circle")
                                }
                                .fontDesign(.monospaced)
                            } label: {
                                Text(shift.name)
                                    .font(.title3)
                                    .bold()
                            }
                        }
                    } header: {
                        HStack {
                            Text(worker.name)
                            Spacer()
                            Button {
                                selectedWorker = worker
                            } label: {
                                Image(systemName: "square.and.pencil")
                            }
                        }
                    }
                }
            }
            .navigationTitle("Turnos")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Nuevo turno") {
                        addNewShift.toggle()
                    }
                }
            }
            .sheet(isPresented: $addNewShift) {
                NewShiftView()
            }
//            .sheet(item: $selectedWorker) { $worker in
//                EditWorkerName(worker: $worker)
//                    .presentationDetents([.fraction(0.2)])
//            }
        }
    }
}

#Preview {
    ShiftsView()
        .environment(WorkersModel.sample)
}

struct EditWorkerName: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var worker: Worker
    
    var body: some View {
        VStack {
            Text("Nombre del agente")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack {
                TextField(worker.name, text: $worker.name)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button {
                    dismiss()
                } label : {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.title)
                }
                .tint(.green)
                .padding(.trailing)
            }
        }
    }
}

extension Int: @retroactive Identifiable {
    public var id: Int { self }
}
