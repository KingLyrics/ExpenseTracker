//
//  ExpenseListView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI

struct ExpenseListView: View {
    
    @EnvironmentObject var expenseViewModel:ExpensesViewModel

    @State private var darkModeEnabled:Bool = false
    @State private var addSheetShowing:Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                HeaderView(darkModeEnabled: $darkModeEnabled, addSheetShowing: $addSheetShowing)
                Spacer()
                TotalMonthView(totalAmount:expenseViewModel.totalAmount)
                Spacer()
                SummaryView(totalAmount:expenseViewModel.totalAmount  , expenseItems: expenseViewModel.expenseItems)
                Spacer()
                    .sheet(isPresented: $addSheetShowing, content: {
                        AddExpenseView(expensesViewModel: expenseViewModel)
                        
                    })
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
        }
    }
}

#Preview {
    ExpenseListView()
        .environmentObject(ExpensesViewModel())
}
