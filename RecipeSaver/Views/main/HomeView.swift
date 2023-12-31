//
//  HomeView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: Recipesviewmodel
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipe: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(Recipesviewmodel())
    }
}
