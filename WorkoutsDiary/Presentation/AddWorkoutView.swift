//
//  AddWorkoutView.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 02.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import SwiftUI

struct AddWorkoutView: View {
    @EnvironmentObject private var store: Store
    
    @State private var nameText: String = ""
    @State private var distanceText: String = ""
    @State private var complexityField: Complexity = .medium
    @State private var dateField: Date = Date()
    @Binding var isAddingMode: Bool
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $nameText)
                TextField("Distance", text: $distanceText)
                Picker(selection: $complexityField, label: Text("Complexity")) {
                    Text("Low").tag(Complexity.low)
                    Text("Medium").tag(Complexity.medium)
                    Text("High").tag(Complexity.high)
                }
                DatePicker(selection: $dateField, displayedComponents: .date) {
                    Text("Date")
                }
            }
            .navigationBarTitle("Workout Details", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: { self.isAddingMode = false }) {
                    Text("Cancel")
                },
                trailing: Button(action: {
                    let workout = Workout(
                        name: self.nameText,
                        distance: self.distanceText,
                        date: self.dateField,
                        complexity: self.complexityField
                    )
                    self.store.dispatch(action: .addWorkout(workout))
                    self.isAddingMode = false
                }) {
                    Text("Save")
                }
                .disabled(nameText.isEmpty)
            )
        }
    }
}
