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
    @State var darkModeEnabled:Bool = false
    
    
   
    var body: some View {
        VStack{
            HeaderView(darkModeEnabled: $darkModeEnabled)
            Spacer()
            TotalMonthView(totalAmount: totalAmount)
            Spacer()
            SummaryView(totalAmount: $totalAmount , expenseItems: expenseViewModel.expenseItems)
                Spacer()
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
