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
    
    let expenseItems:[ExpenseModel] = [
        ExpenseModel(expenseCategory: .Food, image: .food, timePurchased: "2:45Am", amount: -45.99),
        
        ExpenseModel(expenseCategory:.Groceries, image:.groceries , timePurchased: "1:00PM", amount: -81.99),
        
        ExpenseModel(expenseCategory: .Gas, image: .gas, timePurchased: "3:00PM", amount: -20.11)
        
        ]
    var body: some View {
        VStack{
            HeaderView(darkModeEnabled: $darkModeEnabled)
            Spacer()
            TotalMonthView(totalAmount: totalAmount)
            Spacer()
            SummaryView(totalAmount: totalAmount, expenseItems: expenseItems)
                Spacer()
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
