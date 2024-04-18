//
//  ColorPickerControlView.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.
//

import SwiftUI

struct ColorPickerControlView: View {
    @State private var selectedColor:
    Color = .red
    
    var body: some View {
        VStack{
            ColorPicker("Select a Color: ", selection: $selectedColor, supportsOpacity: true)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(selectedColor)
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
        }
        .padding()
    }
}

#Preview {
    ColorPickerControlView()
}
