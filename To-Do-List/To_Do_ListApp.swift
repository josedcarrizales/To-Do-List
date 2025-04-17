//
//  To_Do_ListApp.swift
//  To-Do-List
//
//  Created by Jose Carrizales on 4/14/25.
//

import SwiftUI

@main
struct To_Do_ListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
