//
//  ListViewModel.swift
//  To-Do-List
//
//  Created by Jose Carrizales on 4/16/25.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init () {
        getNewItems()
    }
    
    func getNewItems() {
        let newItems: [ItemModel] = [
            ItemModel(title: "First", isCompleted: false),
            ItemModel(title: "Second", isCompleted: false),
            ItemModel(title: "Third", isCompleted: false),
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(at indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from : IndexSet, to : Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
