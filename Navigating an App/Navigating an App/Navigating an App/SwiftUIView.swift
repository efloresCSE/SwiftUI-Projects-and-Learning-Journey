//
//  SwiftUIView.swift
//  Navigating an App
//
//  Created by Edgar Flores on 10/14/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            TabView{
                Text("This is the Share View")
                    .tabItem({
                        Label("Share", systemImage: "square.and.arrow.up")
                    })
                Text("This is the Trash View")
                    .tabItem({
                        Label("", systemImage: "trash")
                    })
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
