//
//  CategoryView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-10.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: Recipesviewmodel
    var category: Category
    
    //Computerd property
    var recipes: [Recipe] {
        return recipesVM.recipes.filter{$0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipe: recipes)
        }
        .navigationBarTitle(category.rawValue + "s")
    }
}

struct CategoryView_Preview:PreviewProvider {
    static var previews: some View{
        ScrollView{
            CategoryView(category: Category.dessert)
                .environmentObject(Recipesviewmodel())
        }
    }
}

