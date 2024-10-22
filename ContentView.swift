//
//  ContentView.swift
//  qq
//
//  Created by 訪客使用者 on 2024/10/22.
//

import SwiftUI
import SwiftData

// ContentView.swift
struct ContentView: View {
    var body: some View {
        VStack {
            Text("WEDNESDAY, OCT 28")
                .font(.caption)
                .foregroundColor(.secondary)
            
            Text("Your Reading")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Vikash")
                        .frame(width: 300)
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        .frame(width: 300)
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                        .frame(width: 300)
                    CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                        .frame(width: 300)
                }
                .padding()
            }
        }
    }
}
#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
