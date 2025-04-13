//
//  WorkersModel.swift
//  DualDays
//
//  Created by Jose Antonio Mendoza on 20/3/25.
//

import Foundation
import Observation

@Observable
class WorkersModel {
    var workers: [Worker]
    
    var workerOne : Worker { workers[0] }
    var workerTwo : Worker { workers[1] }
    var isEmpty: Bool { workerOne.name.isEmpty || workerTwo.name.isEmpty }
    
    init() {
        self.workers = [Worker(), Worker()]
    }
    
    init(workerOne: Worker, workerTwo: Worker) {
        self.workers = [workerOne, workerTwo]
    }
}

extension WorkersModel {
    static var sample: WorkersModel {
        .init(workerOne: .previewWorkerOne, workerTwo: .previewWorkerTwo)
    }
}
