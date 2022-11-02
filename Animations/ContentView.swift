//
//  ContentView.swift
//  Animations
//
//  Created by Matthew Dolan on 2022-10-29.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                // 2.
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                // 1.
//                    .transition(.scale)
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
