//
//  NewRecipeView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//


import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    
    var body: some View {
        NavigationView {
            Button("Add recipe manualy") {
                showAddRecipe = true
            }
            .navigationTitle("New Recipes")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
                AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
