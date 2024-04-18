//
//  SwiftUILink.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.
//

import SwiftUI

struct SwiftUILink: View {
    @State private var showWebView = false
    var body: some View {
        VStack{
            // Cara Pertama
            let url = URL(string: "https://apple.com")
            Link("Apple Website", destination: url!)
            
            // Jika di styling buttonnya
            Link(destination: url!) {
                HStack{
                    Image(systemName: "applelogo")
                    Text("Sign in with apple")
                }
                .frame(width: 250, height: 70)
                .foregroundStyle(.white)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 16))
            }
            
            // cara ketiga
            Button{
                showWebView = true
            }label: {
                Text("Show Apple website")
            }
            .fullScreenCover(isPresented: $showWebView, content: {
                WebView(url: url!)
            })
            
        }
    }
}

#Preview {
    SwiftUILink()
}
