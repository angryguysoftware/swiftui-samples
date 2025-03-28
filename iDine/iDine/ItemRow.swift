//
//  ItemRow.swift
//  iDine
//
//  Created by mike tihonchik on 3/22/25.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    var body: some View {
        HStack {
            Image(item.thumbnailImage).clipShape(Circle()).overlay(Circle().stroke(.gray, lineWidth: 2))
            Text(item.name).font(.headline)
            Text("$\(item.price)")
            Spacer()
            // we need to tell Swift that the string itself is the identifier for each item
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                        .fontWeight(.black)
                        .padding(5)
                        .background(colors[restriction, default: .black])
                        .clipShape(Circle())
                        .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
