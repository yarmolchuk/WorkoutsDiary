//
//  Action.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 01.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import Foundation

enum Action {
    case addWorkout(_ workout: Workout)
    case removeWorkout(at: IndexSet)
    case sort(by: SortType)
}
