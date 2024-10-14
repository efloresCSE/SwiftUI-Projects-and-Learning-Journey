//
//  ContentView.swift
//  Navigating an App
//
//  Created by Edgar Flores on 10/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: SwiftUIView()){
                    Text("Do Something")
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}

#Preview {
    ContentView()
}
