//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var darkModeEnabled:Bool = false
    let totalAmount:Double = 650.50
    
    let expenseItem:ExpenseModel =
        ExpenseModel(expenseCategory: .Food, image: .food, timePurchased: "2:45Am", amount: 45.99)
    
    

    var body: some View {
        VStack{
            HeaderView(darkModeEnabled: $darkModeEnabled)
            Spacer()
            TotalMonthView(totalAmount: totalAmount)
            Spacer()
            SummaryView(totalAmount: totalAmount, expenseItem: expenseItem)
                Spacer()
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
