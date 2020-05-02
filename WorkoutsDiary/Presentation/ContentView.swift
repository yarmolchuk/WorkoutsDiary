//
//  ContentView.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 01.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: Store
    @State private var isAddingMode: Bool = false
    
    var body: some View {
        NavigationView {
            WorkoutListView()
                .navigationBarTitle("Workouts diary", displayMode: .inline)
                .navigationBarItems(
                    leading: AddButton(isAddingMode: self.$isAddingMode),
                    trailing: TrailingView()
                )
        }
        .sheet(isPresented: $isAddingMode) {
            AddWorkoutView(isAddingMode: self.$isAddingMode)
                .environmentObject(self.store)
        }
    }
}
