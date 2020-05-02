//
//  Store.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 01.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

 import SwiftUI

 final class Store: ObservableObject {
     @Published private(set) var state: AppState
     
     init(state: AppState = .init(items: [Workout]())) {
         self.state = state
     }
     
     public func dispatch(action: Action) {
         state = reducer(state: state, action: action)
     }
 }
