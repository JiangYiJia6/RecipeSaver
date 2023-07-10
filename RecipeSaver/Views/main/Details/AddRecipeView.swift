//
//  AddRecipeView.swift
//  RecipeSaver
//
//  Created by Yijia Jiang on 2023-07-10.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String=""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String=""
    @State private var ingredients: String=""
    @State private var deirections: String=""
    
    @Environment(\.dismiss)var dismiss
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                }
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases){category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                Section(header: Text("Description")){
                    TextEditor(text: $deirections)
                }
                Section(header: Text("Ingredients")){
                    TextEditor(text: $ingredients)
                }
                Section(header: Text("Direction")){
                    TextEditor(text: $deirections)
                }
            }
            .toolbar(content: {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button {
                                    dismiss()
                                } label: {
                                    Label("Cancel", systemImage: "xmark")
                                        .labelStyle(.iconOnly)
                                }

                            }
                            
                            ToolbarItem {
                                
                                Button {
                                    
                                } label: {
                                    Label("Done", systemImage: "checkmark")
                                        .labelStyle(.iconOnly)
                                }
                                .disabled(name.isEmpty)
                            }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    AddRecipeView()
}