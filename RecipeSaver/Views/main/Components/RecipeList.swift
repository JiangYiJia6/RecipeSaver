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
            HStack {
                Text("\(recipe.count) \(recipe.count > 1 ? "recipes" :"recipe")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive (minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(recipe) { recipe in
                    RecipeCard(recipe: recipe)
                }
            }
            
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Preview:PreviewProvider {
    static var previews: some View{
        ScrollView{
            RecipeList(recipe:Recipe.all)
        }
    }
}

