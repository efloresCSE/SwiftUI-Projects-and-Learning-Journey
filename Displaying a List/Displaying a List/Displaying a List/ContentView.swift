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

//What @Published does:
//When you mark a property (in this case, meals) with @Published, it tells SwiftUI that any changes to this property should trigger a view update. In your code, meals is marked with @Published, so whenever meals is modified, the SwiftUI view (ContentView) will automatically refresh and display the new data.
//
//How it works:
//The Model class conforms to the ObservableObject protocol, which allows it to be observed by SwiftUI views.
//The @ObservedObject property wrapper in the ContentView marks the model instance. This lets SwiftUI know that changes in the model's published properties (like meals) should trigger a view update.
//When meals (marked as @Published) changes, SwiftUI automatically detects the change and re-renders the view that depends on it (in this case, the List inside ContentView).
//In summary, @Published is crucial for making the property reactive, so when the meals list is updated, the List displaying the meals in ContentView is refreshed without manual intervention.
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
