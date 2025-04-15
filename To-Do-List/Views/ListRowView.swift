//
//  ListRowView.swift
//  To-Do-List
//
//  Created by Jose Carrizales on 4/14/25.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}


#Preview {
    ListRowView(title: "First Title")
}
