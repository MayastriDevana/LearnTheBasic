//
//  ContentView.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.hail.fill")
                .font(.system(size: 50))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.black, .yellow)
                .shadow(color: .gray, radius: 10, x:0, y:10)
            
            Image(.kucing)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle (cornerRadius: 20))
            
            //
            
            Group {
                let url = URL (string: "https://images.unsplash.com/photo-1533738363-b7f9aef128ce?q=80&w=3024&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
                
                AsyncImage(url: url) {
                    Image in
                    Image.resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                }placeholder: {
                    ProgressView()
                }
            }
            .overlay {
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .opacity(0.5)
                    HStack {
                        Image(systemName: "cloud.sun.rain")
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(.white, .yellow, .blue)
                            .font(.largeTitle)
                        Text ("Meoww")
                            .foregroundStyle(.white)
                            .fontWeight(.black)
                    }
                }
            }
        
            Text("Hello, iOS Developer")
                      
            Text("This is my journey")
        }
    }
}

#Preview {
    ContentView()
}
