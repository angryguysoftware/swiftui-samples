//
//  ContentView.swift
//  iDine
//
//  Created by mike tihonchik on 3/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }.navigationTitle("Menu")
        }
    }
}

#Preview {
    ContentView()
}
