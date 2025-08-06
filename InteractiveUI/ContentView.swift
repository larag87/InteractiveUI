//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var age = ""
    @State private var textTitle1 = "How old are you?"
    @State private var presentAlert = false
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            Text(textTitle1)
                .font(.title)
            TextField("Type your age here...", text: $age)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            
            Button("Submit Information") {
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.teal)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
