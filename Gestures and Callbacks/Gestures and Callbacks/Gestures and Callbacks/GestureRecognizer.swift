//
//  GestureRecognizer.swift
//  Gestures and Callbacks
//
//  Created by Edgar Flores on 10/14/24.
//

import SwiftUI

struct GestureRecognizer: View {
    @State private var flag = false
    var body: some View {
        Text("Tap Me")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(15)
            .background(flag ? Color.green : Color.yellow)
            .onTapGesture {
                flag.toggle()
            }
    }
}

#Preview {
    GestureRecognizer()
}
