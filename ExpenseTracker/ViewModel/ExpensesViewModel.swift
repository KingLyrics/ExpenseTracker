//
//  ExpensesViewModel.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import Foundation

@Observable
class ExpensesViewModel{
    
    var expenseItems:[ExpenseModel] = [
        ExpenseModel(expenseCategory: .Food, image: .food, timePurchased: "2:45Am", amount: -45.99),
        
        ExpenseModel(expenseCategory:.Groceries, image:.groceries , timePurchased: "1:00PM", amount: -81.99),
        
        ExpenseModel(expenseCategory: .Gas, image: .gas, timePurchased: "3:00PM", amount: -20.11)
        
        ]
    
    init() {}
    
    var totalAmount:Double{
        
        var sum:Double = 0.0
        
        for expense in expenseItems{
            sum+=expense.amount
        }
        
        return sum
        
    }
}
