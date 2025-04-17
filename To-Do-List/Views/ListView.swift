//
//  ListView.swift
//  To-Do-List
//
//  Created by Jose Carrizales on 4/14/25.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
            List {
                ForEach(listViewModel.items) { item in
                    ListRowView(item: item)
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
        .listStyle(PlainListStyle())
        .navigationTitle("To-Do List ✍🏻")
        .navigationBarItems(leading: EditButton(),
                            trailing: NavigationLink("Add", destination: AddView()))
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
