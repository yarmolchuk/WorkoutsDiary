//
//  TrailingView.swift
//  WorkoutsDiary
//
//  Created by Dima Yarmolchuk on 02.05.2020.
//  Copyright © 2020 yarmolchuk. All rights reserved.
//

import Foundation

import SwiftUI

struct TrailingView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            Button(action: {
                switch self.store.state.sortType {
                case .distance:
                    self.store.dispatch(action: .sort(by: .distance))
                default:
                    self.store.dispatch(action: .sort(by: .complexity))
                }
            }) {
                Image(systemName: "arrow.up.arrow.down")
            }
            EditButton()
        }
    }
}
