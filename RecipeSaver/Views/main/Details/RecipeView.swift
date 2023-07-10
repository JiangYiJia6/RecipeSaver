//
//  RecipeView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-10.
//

import SwiftUI

struct RecipeView: View {
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: recipe.image)) {image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty{
                        Text(recipe.description)}
                    if !recipe.ingredients.isEmpty{
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Ingredients")
                                .font(.headline)
                            
                            Text(recipe.ingredients)
                        }
                    }
                    if !recipe.direction.isEmpty{
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                                .font(.headline)
                            
                            Text(recipe.direction)
                        }
                    }
                }
                .frame(maxWidth: .infinity,  alignment: .leading)
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Preview:PreviewProvider {
    static var previews: some View{
        ScrollView{
            RecipeView(recipe:Recipe.all[0])
        }
    }
}
