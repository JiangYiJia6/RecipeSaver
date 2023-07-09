//
//  FavoritesView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("you haven't saved any recipe to your favorites yet")
                .padding()
                .navigationTitle("favorites")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    FavoritesView()
}
