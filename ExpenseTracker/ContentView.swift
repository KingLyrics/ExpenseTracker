//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expenseViewModel = ExpensesViewModel()
    @State private var totalAmount = ExpensesViewModel().totalAmount
    
    @State private var darkModeEnabled:Bool = false
    @State private var addSheetShowing:Bool = false
    
    
    var body: some View {
        VStack{
            HeaderView(darkModeEnabled: $darkModeEnabled, addSheetShowing: $addSheetShowing)
            Spacer()
            TotalMonthView(totalAmount: totalAmount)
            Spacer()
            SummaryView(totalAmount: $totalAmount , expenseItems: expenseViewModel.expenseItems)
                Spacer()
                .sheet(isPresented: $addSheetShowing, content: {
                    AddExpenseView()
                })
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
