//
//  ExpensesViewModel.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import Foundation
import Charts

class ExpensesViewModel: ObservableObject {
    let expenseKey:String = "expense_key"
        
    @Published var expenseItems: [ExpenseModel] = [
        ExpenseModel(expenseCategory: .Food, image: "food", date: Date(), amount: -20000),
        ExpenseModel(expenseCategory: .Food, image: "food", date: Date(), amount: -20000),
        
        ExpenseModel(expenseCategory:.Groceries, image:"groceries" , date: Date(), amount: -81999),
        
        ExpenseModel(expenseCategory: .Gas, image: "gas", date: Date(), amount: -2000),
        
        ExpenseModel(expenseCategory: .Education, image: "education", date: Date(), amount: -9000),
        
        

    ]{
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
    
    //get expense
    
    func getChartDataByMonth()->[ChartModel]{
        let calendar = Calendar.current
        
        let expensesByMonth = Dictionary(grouping: expenseItems) { item in
            calendar.component(.month, from: item.date)
        }
        
        var chartData:[ChartModel] = []
        
        for(month, expenses) in expensesByMonth{
            let totalExpense = expenses.reduce(0.0) { $0 + abs($1.amount) } 

            guard let date = calendar.date(from: DateComponents(year: calendar.component(.year, from: Date()), month: month)) else {
                fatalError("Failed to create Date from month \(month)")
            }
            
            let chartItem = ChartModel(date: date, amount: totalExpense)

            chartData.append(chartItem)

            
        }
        return chartData

    }
    
    func findHighestExpense()->(amount:Double, date:Date)?{
        guard !expenseItems.isEmpty else{return nil}
        let sortedExpenses = expenseItems.sorted{ abs($0.amount) >  abs($1.amount)}
        return (sortedExpenses.first!.amount, sortedExpenses.first!.date)
    }
    
    
    func findMostFrequentImageName() -> (name: String, count: Int, totalAmount: Double)? {
        guard !expenseItems.isEmpty else { return nil } // Handle empty array

        let imageCounts = expenseItems.reduce(into: [String: Int]()) { counts, item in
            counts[item.image, default: 0] += 1
        }

        let imageTotals = expenseItems.reduce(into: [String: Double]()) { totals, item in
            totals[item.image, default: 0.0] += item.amount
        }

        guard let mostFrequentImageName = imageCounts.max(by: { $0.value < $1.value })?.key else {
            return nil
        }

        let mostFrequentCount = imageCounts[mostFrequentImageName] ?? 0
        let totalAmount = imageTotals[mostFrequentImageName] ?? 0.0

        return (mostFrequentImageName, mostFrequentCount, totalAmount)
    }

   
    func deleteExpense(indexSet:IndexSet){
        expenseItems.remove(atOffsets: indexSet)
    }
    
}




