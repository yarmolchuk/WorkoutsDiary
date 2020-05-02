//
//  AppState.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 01.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import Foundation

struct AppState {
    var workouts: [Workout]
    var sortType: SortType?
}

enum SortType {
    case distance
    case complexity
}
