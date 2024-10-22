//
// ContentView.swift
// SwiftUIButton
//
// Created by IECS_MAC04 on 2020/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Hello World tapped!")
        }) {
            Text("Hello, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
