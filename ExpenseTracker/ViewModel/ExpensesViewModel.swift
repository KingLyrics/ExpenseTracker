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
        ExpenseModel(expenseCategory: .Food, image: .food, date: Date(), amount: -45.99),
        
        ExpenseModel(expenseCategory:.Groceries, image:.groceries , date: Date(), amount: -81.99),
        
        ExpenseModel(expenseCategory: .Gas, image: .gas, date: Date(), amount: -20.11),
        
        ExpenseModel(expenseCategory: .Education, image: .education, date: Date(), amount: -900.10)
        
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
