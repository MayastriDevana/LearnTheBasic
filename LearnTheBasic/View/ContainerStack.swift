//
//  ContainerStack.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.
//

import SwiftUI

struct ContainerStack: View {
    var body: some View {
        ZStack{ //zero-sized stack
            LinearGradient(
                colors: [.teal, .white, .pink],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            VStack { //vertical stack
                Text("Hello, iOS Developer")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                Spacer()
                
                Image(systemName: "applelogo")
                    .font(.system(size: 90))
                Spacer()
                
                HStack{
                    Image (systemName: "lock.open.applewatch")
                    .foregroundStyle(.black)
                    Text ("Unlock your creativity")
                    .foregroundStyle(.black)
                }
                .font(.title2)
                .fontWeight(.light)
            }
        }
    }
}

#Preview {
    ContainerStack()
}
