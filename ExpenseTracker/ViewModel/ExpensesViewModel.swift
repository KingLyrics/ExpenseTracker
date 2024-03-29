//
//  ExpensesViewModel.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import Foundation
import SwiftUI

class ExpensesViewModel: ObservableObject {
    
    let expenseKey:String = "expense_key"
    
    @Published var expenseItems: [ExpenseModel] = []{
        didSet{
            calculateTotalAmount()
            saveExpenses()

        }
    }
    
    @Published var totalAmount: Double = 0.0
    
    init() {
        calculateTotalAmount()
    }
    
    func calculateTotalAmount() {
        var sum: Double = 0.0
        for expense in expenseItems {
            sum += expense.amount
        }
        totalAmount = sum
    }
   

    func saveExpenses(){
        guard let encodedData = try?JSONEncoder().encode(expenseItems)else{return}
        UserDefaults.standard.set(encodedData,forKey: expenseKey)
        
    }
    
    func addExpense(expense:ExpenseModel){
        expenseItems.append(expense)
    }
    
}




