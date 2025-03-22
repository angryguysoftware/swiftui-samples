//
//  ContentView.swift
//  iDine
//
//  Created by mike tihonchik on 3/21/25.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in 
                    Section(section.name) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }.navigationTitle("Menu").listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
