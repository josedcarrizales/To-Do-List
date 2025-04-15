//
//  ListView.swift
//  To-Do-List
//
//  Created by Jose Carrizales on 4/14/25.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "First",
        "Second",
        "Third",
        "Fourth"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("To-Do List ✍🏻")
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
