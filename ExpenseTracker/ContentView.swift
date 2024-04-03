//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var expenseViewModel:ExpensesViewModel
    
    @State private var darkModeEnabled:Bool = false
    @State private var addSheetShowing:Bool = false
    
    var body: some View {
        TabView{
            ExpenseListView(expensesViewModel: expenseViewModel, darkModeEnabled: $darkModeEnabled, addSheetShowing: $addSheetShowing)
                .tabItem {
                    Label("Expenses", systemImage: "list.clipboard.fill" )
                }
            AnalyticsView(expensesViewModel: expenseViewModel, darkModeEnabled: $darkModeEnabled)
                .tabItem{
                    Label("Analytics", systemImage: "chart.pie.fill")
                }
        }

    }
    
}

#Preview {
    ContentView()
        .environmentObject(ExpensesViewModel())
}


