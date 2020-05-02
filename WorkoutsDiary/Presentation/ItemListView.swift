//
//  WorkoutListView.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 02.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import SwiftUI

struct WorkoutListView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        List {
            ForEach(store.state.items) {
                WorkoutView(workout: $0)
            }
            .onDelete {
                store.dispatch(action: .removeWorkout(at: $0))
            }
            .listRowInsets(EdgeInsets())
        }
    }
}
