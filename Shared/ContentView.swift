//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 3/7/21.
// Last video of Day 32
/*
 This is about asking for an explicit animation to occur due to some state change.
 */

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    var body: some View {
        Button("Tap Me") {
            // WithAnimation gives it an "animated" look. Without it. It just automatically goes to the desired degree. This is a closure. So I could have given it a function instead.
            withAnimation {
            self.animationAmount += 360
            }
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0.1, y: 0, z: 0.5))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
