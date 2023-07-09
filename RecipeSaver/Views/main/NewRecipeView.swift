//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    NewRecipeView()
}
