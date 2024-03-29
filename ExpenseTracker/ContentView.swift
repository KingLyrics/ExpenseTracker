//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            ExpenseListView()
                .tabItem {
                    Label("Expenses", systemImage: "list.clipboard.fill" )
                }
            AnalyticsView()
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

/*
 
 1)Implement userdefault data saving
 2) Add a bar chart page
 3) Hmm yeah
 
 */
