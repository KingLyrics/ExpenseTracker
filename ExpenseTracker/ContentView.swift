//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var expenseViewModel = ExpensesViewModel()
    @State var darkModeEnabled:Bool = false
    
   
    var body: some View {
        VStack{
            HeaderView(darkModeEnabled: $darkModeEnabled)
            Spacer()
            TotalMonthView(totalAmount: expenseViewModel.totalAmount)
            Spacer()
            SummaryView(totalAmount: expenseViewModel.totalAmount , expenseItems: expenseViewModel.expenseItems)
                Spacer()
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
