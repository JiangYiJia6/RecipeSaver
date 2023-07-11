//
//  Recipesviewmodels.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-11.
//

import Foundation

class Recipesviewmodel: ObservableObject{
    @Published private(set) var recipes:[Recipe]=[]
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}

