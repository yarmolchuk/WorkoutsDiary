//
//  WorkoutView.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 02.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import SwiftUI

struct WorkoutView: View {
    let workout: Workout
    
    private var backgroundColor: Color {
        switch workout.complexity {
        case .low:
            return .green
        case .medium:
            return .orange
        case .high:
            return .red
        }
    }
    
    var body: some View {
        HStack {
            Text(workout.name)
            Spacer()
            Text(workout.distance)
            Spacer()
            Text(simpleFormat(workout.date))
        }
        .padding()
        .background(backgroundColor)
    }
}

private extension WorkoutView {
    func simpleFormat(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy hh:mm"
        dateFormatter.locale = .init(identifier: "en_GB")
        return dateFormatter.string(from: date)
    }
}
