//
//  AddButton.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 02.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import SwiftUI

struct AddButton: View {
    @Binding var isAddingMode: Bool
    
    var body: some View {
        Button(action: { self.isAddingMode = true }) {
            Image(systemName: "plus")
        }
    }
}
