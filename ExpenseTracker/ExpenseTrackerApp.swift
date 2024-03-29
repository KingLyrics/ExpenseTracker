//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    
    @StateObject var expensesViewModel = ExpensesViewModel()
        
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(expensesViewModel)
    }
}
