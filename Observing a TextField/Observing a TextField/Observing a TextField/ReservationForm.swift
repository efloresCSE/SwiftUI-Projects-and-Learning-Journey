//
//  ReservationForm.swift
//  Observing a TextField
//
//  Created by Edgar Flores on 10/7/24.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName:String = ""
    var body: some View {
        Form {
            TextField("Type Your Name",
                text:$customerName,
                      //Not a modifier but a parameter
                onEditingChanged: { status in
                    print(status)
                })
            //These two are modifiers
            .onSubmit({
                print("submitted")
            })
            .onChange(of: customerName, perform: { newValue in
                print(newValue)
            })

        }
        .padding()
    }
}
struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
