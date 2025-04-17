//
//  ItemModel.swift
//  To-Do-List
//
//  Created by Jose Carrizales on 4/16/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
