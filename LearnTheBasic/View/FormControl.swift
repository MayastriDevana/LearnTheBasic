//
//  FormControl.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.
//

import SwiftUI

struct FormControl: View {
    @State private var firstName: String = ""
    @State private var LastName: String = ""
    var body: some View {
        Form{
            Section{
                TextField("First Name",
            text: $firstName)
                TextField("Last Name",
            text: $LastName)
                
            }header: {
                Text("Account info".uppercased())
            }footer: {
                Text("Please fill text field")
            }
        }
    }
}

#Preview {
    FormControl()
}
