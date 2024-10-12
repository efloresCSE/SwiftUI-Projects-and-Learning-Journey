//
//  ReservationCalendar.swift
//  Adding Controls
//
//  Created by Edgar Flores on 10/11/24.
//

import SwiftUI

struct ReservationCalendar: View {
    @State var reservationDate = Date()
    
    var body: some View {
        Form{
            HStack{
                DatePicker(
                    selection: $reservationDate, in: Date()...,
                    displayedComponents: [.date, .hourAndMinute]
                ) {}
                Button(action: {print("do something!")}){
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding(20)
            }
            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
        }
    }
}

#Preview {
    ReservationCalendar()
}
