//
//  Workout.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 01.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import Foundation

struct Workout: Identifiable {
    let id: UUID = .init()
    let name: String
    let distance: String
    let date: Date
    let complexity: Complexity
}

enum Complexity: Int {
    case low
    case medium
    case high
}
