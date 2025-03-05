//
//  MainTabView.swift
//  Cookcademy
//
//  Created by Roman Khancha on 03.03.2025.
//

import SwiftUI

struct MainTabView: View {
    @StateObject private var recipeData = RecipeData()
    
    var body: some View {
        TabView {
            RecipeCategoryGridView()
                .tabItem { Label("Recipes", systemImage: "list.dash") }
            NavigationView {
                RecipesListView(viewStyle: .favorites)
            }.tabItem { Label("Favorites", systemImage: "heart.fill") }
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear") }
        }
        .environmentObject(recipeData)
        .onAppear {
            recipeData.loadRecipes()
        }
    }
}
#Preview {
    MainTabView()
}
