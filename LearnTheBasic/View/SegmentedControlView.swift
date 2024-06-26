
//  SegmentedControlView.swift
//  LearnTheBasic
//
//  Created by User on 05/04/24.


import SwiftUI

struct SegmentedControlView: View {
    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        NavigationStack{
            List {
                Picker("Select your flavor", selection: $selectedFlavor) {
                    Text("Chocolate")
                        .tag(Flavor.chocolate)
                    
                    Text("Vanilla")
                        .tag(Flavor.vanilla)
                    
                    Text("Strawberry")
                        .tag(Flavor.strawberry)
                    
                }
                .pickerStyle(.segmented)
                
                Text("Selecting: \(selectedFlavor)")
            }
        }
    }
}

#Preview {
    SegmentedControlView()
}

enum Flavor: String, CaseIterable {
    case chocolate, vanilla, strawberry
    var id: Self{
        self
    }
}
