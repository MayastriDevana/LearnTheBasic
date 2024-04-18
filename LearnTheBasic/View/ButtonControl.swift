//
//  ButtonControl.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.
//

import SwiftUI

struct ButtonControl: View {
    var body: some View {
        VStack (spacing: 24){
            // 1. standart button
            Button {
                print("standart button tapped")
            }label: {
                Text("standart button")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            
            // 2. Role Button
            Button(role: .destructive){
                print("Hello ios developer button tapped")
            }label: {
                Text("Destructive button")
            }
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            
            // 3. custom button
            Button{
                
            }label: {
                Text("Custom button")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 40, style: .continuous))
                    .foregroundStyle(.white)
                
            }
            // 4. custom button part 2
            Button{
                
            }label: {
                Text("Magnificent button")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .padding()
                    .background(.purple)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                    .foregroundStyle(.white)
                    .padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(.purple, lineWidth: 5)
                    }
            }
            //5. Image button
            Button {
                
            }label: {
                Image(systemName: "power.circle.fill")
                    .padding()
                    .background(.green)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            
            // 6. Button Linear Gradient
            Button {
                
            } label: {
                Label("Add Stock", systemImage: "flame")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .padding()
            .foregroundStyle(.white)
            .background(
                LinearGradient(colors: [.green, .mint], startPoint: .trailing, endPoint: .leading))
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .padding()
    }
}

#Preview {
    ButtonControl()
}
