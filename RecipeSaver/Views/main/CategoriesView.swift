//
//  CategoriesView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-07.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            Text("Categories")
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    CategoriesView()
}
