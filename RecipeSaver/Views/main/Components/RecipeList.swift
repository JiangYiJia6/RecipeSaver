//
//  RecipeList.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-09.
//

import SwiftUI

struct RecipeList: View {
    var recipe: [Recipe]
    var body: some View {
        VStack{
            Text("\(recipe.count) \(recipe.count > 1 ? "recipes" :"recipe")")
                .font(.headline)
                .fontWeight(.medium)
                .opacity(0.7)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Preview:PreviewProvider {
    static var previews: some View{
        RecipeList(recipe:Recipe.all)
    }
}

