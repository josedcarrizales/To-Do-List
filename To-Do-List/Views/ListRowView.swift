//
//  ListRowView.swift
//  To-Do-List
//
//  Created by Jose Carrizales on 4/14/25.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle").foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}


#Preview {
    Group {
        ListRowView(item: ItemModel(title: "Test Item1", isCompleted: true))
        ListRowView(item: ItemModel(title: "Test Item2", isCompleted: false))

    }
}
