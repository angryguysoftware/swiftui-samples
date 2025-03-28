//
//  ItemRow.swift
//  iDine
//
//  Created by mike tihonchik on 3/22/25.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            Text(item.name)
            Text("$\(item.price)")
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
