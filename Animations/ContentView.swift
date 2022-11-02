//
//  ContentView.swift
//  Animations
//
//  Created by Matthew Dolan on 2022-10-29.
//

import SwiftUI

struct ContentView: View {
    // 2.
    let letters = Array("Hello, SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero
    
    // 1.
//    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        // 2.
        HStack(spacing: 0) {
            ForEach(0..<letters.count) { num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(enabled ? .blue : .red)
                    .offset(dragAmount)
                    .animation(
                        .default.delay(Double(num) / 20),
                        value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
        
        
        
        
        
        
        
        // 1.
//        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .frame(width: 300, height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .offset(dragAmount)
//            .gesture(
//                DragGesture()
//                    .onChanged{ dragAmount = $0.translation }
//                    .onEnded{ _ in
//                        // 1b.
//                        withAnimation {
//                            dragAmount = .zero
//
//                        }
//                    }
//            )
        // 1a.
//            .animation(.spring(), value: dragAmount)
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
