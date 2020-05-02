//
//  Reducer.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 01.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import Foundation

func reducer(state: AppState, action: Action) -> AppState {
    var state = state
    
    switch action {
    case .addWorkout(let workout):
        state.items.append(workout)
        
    case .removeWorkout(let indexSet):
        state.items.remove(atOffsets: indexSet)
    
    case .sort(let type):
        switch type {
        case .distance:
            state.items.sort { $0.distance > $1.distance }
            state.sortType = .distance
        case .complexity:
            state.items.sort { $0.complexity.rawValue > $1.complexity.rawValue }
            state.sortType = .complexity
        }
    }
    return state
}
