//
//  DatePickerControl.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.
//

import SwiftUI

struct DatePickerControl: View {
    @State private var date = Date()
    var body: some View {
        VStack{
            DatePicker("Choose your date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                .datePickerStyle(.compact)
        }
        .padding()
    }
}

#Preview {
    DatePickerControl()
}
