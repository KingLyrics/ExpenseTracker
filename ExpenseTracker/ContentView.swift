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
    let totalAmount:Double = 650.50
    
   
    var body: some View {
        VStack{
            HeaderView(darkModeEnabled: $darkModeEnabled)
            Spacer()
            TotalMonthView(totalAmount: totalAmount)
            Spacer()
            SummaryView(totalAmount: totalAmount, expenseItems: expenseViewModel.expenseItems)
                Spacer()
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
