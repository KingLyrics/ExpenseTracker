//
//  ExpenseListView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI

struct ExpenseListView: View {
    
    @ObservedObject var expensesViewModel:ExpensesViewModel
    @Binding  var darkModeEnabled:Bool
    @Binding  var addSheetShowing:Bool
    
    var body: some View {
        ScrollView{
            VStack{
                HeaderView(darkModeEnabled: $darkModeEnabled, addSheetShowing: $addSheetShowing, pageTitle: "EXPENSES")
                Spacer()
                TotalMonthView(totalAmount:expensesViewModel.totalAmount)
                Spacer()
                SummaryView(totalAmount:expensesViewModel.totalAmount  , expenseItems: expensesViewModel.expenseItems)
                Spacer()
                    .sheet(isPresented: $addSheetShowing, content: {
                        AddExpenseView(expensesViewModel: expensesViewModel)
                        
                    })
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
        }
    }
}

#Preview {
    ExpenseListView(expensesViewModel: ExpensesViewModel(), darkModeEnabled: .constant(false), addSheetShowing: .constant(false))
        .environmentObject(ExpensesViewModel())
}
