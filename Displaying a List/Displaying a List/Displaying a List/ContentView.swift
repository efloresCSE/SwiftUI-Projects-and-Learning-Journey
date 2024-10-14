//
//  ContentView.swift
//  Displaying a List
//
//  Created by Edgar Flores on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    
    var body: some View {
        VStack {
            List{
                ForEach(model.meals) { item in
                    Text(item.name)}
            }
        }
        
    }
}
//has an id so gets away from error:
//Referencing initializer init(_:content:) on ForEach requires that String conforms to Identifiable.
//This happens because the elements that ForEach is processing cannot be distinguished from each other. Every element must be unique, which means that SwiftUI must be able to discern one element from the other.
//The error message says that ForEach requires that String conforms to Identifiable. Identifiable is a protocol that makes objects displayed in a List or ScrollView uniquely identifiable, by forcing them to have an identification field called id.
struct Item: Identifiable {
    let name: String
    let id = UUID()
}
//Observable Object allows instances of this class to be used inside of views, so that when changes happen the view will reload
class Model: ObservableObject {
    @Published var meals: [Item] = menuItems()
    
    static func menuItems() -> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettuccini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocado Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza")
        ]
    }
}

#Preview {
    ContentView()
}
