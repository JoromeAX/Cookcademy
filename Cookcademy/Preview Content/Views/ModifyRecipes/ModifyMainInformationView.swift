//
//  ModifyMainInformationView.swift
//  Cookcademy
//
//  Created by Roman Khancha on 27.02.2025.
//

import SwiftUI

struct ModifyMainInformationView: View {
    let rowBackgroundColor = AppColor.background
    let rowForegroundColor = AppColor.foreground
    
    @Binding var mainInformation: MainInformation
    @EnvironmentObject private var recipeData: RecipeData
    
    var body: some View {
        Form {
            TextField("Recipe Name", text: $mainInformation.name)
                .listRowBackground(rowBackgroundColor)
            TextField("Author", text: $mainInformation.author)
                .listRowBackground(rowBackgroundColor)
            Section(header: Text("Description")) {
                TextEditor(text: $mainInformation.description)
                    .listRowBackground(rowBackgroundColor)
            }
            Picker(selection: $mainInformation.category, label: HStack {
                Text("Category")
                Spacer()
                Text(mainInformation.category.rawValue)
            }) {
                ForEach(MainInformation.Category.allCases, id: \.self) { category in
                    Text(category.rawValue)
                }
            }
            .listRowBackground(rowBackgroundColor)
            .pickerStyle(MenuPickerStyle())
        }
        .foregroundColor(rowForegroundColor)
    }
}

#Preview {
    @Previewable @State var mainInformation = MainInformation(name: "Test Name", description: "Test Description", author: "Test Author", category:.breakfast)
    @Previewable @State var emptyInformation = MainInformation(name: "", description: "", author: "", category: .breakfast)
    
    
    ModifyMainInformationView(mainInformation: $mainInformation)
    ModifyMainInformationView(mainInformation: $emptyInformation)
    
}
