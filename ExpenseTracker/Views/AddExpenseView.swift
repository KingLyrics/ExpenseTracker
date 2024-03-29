//
//  AddExpenseView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI

struct AddExpenseView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var expensesViewModel:ExpensesViewModel
    
    
    @State private var expenseAmount:Double = 0.0
    
    @State private var selectedType:ExpenseType = .Gas
    let expenseTypes: [ExpenseType] = ExpenseType.allCases
    
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Amount", value: $expenseAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
                    .onChange(of: expenseAmount){
                        expenseAmount = abs(expenseAmount) * -1.0
                    }
                    .padding(.vertical,10)
                Picker("Expense Category", selection: $selectedType) {
                    ForEach(expenseTypes, id:\.self) { type in
                        HStack {
                            Image("\(type.rawValue.lowercased())")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            Text(type.rawValue.capitalized)
                        }
                    }
                }
                .pickerStyle(.navigationLink)
                
            }
            .navigationTitle("Add Expenses")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save"){
                        addExpenseItem(amount: expenseAmount, type: selectedType)
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Cancel")
                            .foregroundStyle(.red)
                    })
                }
            }
            
        }
    }

    
    func addExpenseItem(amount:Double, type:ExpenseType){
        let newExpenseItem = ExpenseModel(expenseCategory: type, image: type.iconImage, date: Date(), amount: amount)
        expensesViewModel.addExpense(expense: newExpenseItem)
    }
}




#Preview {
    AddExpenseView( expensesViewModel: ExpensesViewModel())
        .environmentObject(ExpensesViewModel())

}
