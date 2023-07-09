//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(Recipe.all) { recipe in
                Text(recipe.name)
                    .navigationTitle("My Recipe")
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    HomeView()
}
