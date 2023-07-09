//
//  TabBar.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house" )
                }
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2" )
                }
            NewRecipeView()
                .tabItem {
                    Label("New ", systemImage: "plus" )
                }
            
            FavoritesView()
                .tabItem {
                    Label("favorites", systemImage: "heart" )
                }
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gear" )
                }
        }
    }
}

#Preview {
    TabBar()
}
