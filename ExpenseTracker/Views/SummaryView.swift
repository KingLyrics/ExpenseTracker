//
//  SummaryView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct SummaryView: View {
   var totalAmount:Double
    let expenseItems:[ExpenseModel]
    
    var body: some View {
        VStack(alignment:.leading){
                HStack{
                    Text("Today")
                    Spacer()
                    Text(totalAmount, format:.currency(code: Locale.current.currency?.identifier ?? "USD"))
                    
                }
                .foregroundStyle(.secondary)
                .font(.headline)
                .padding(.bottom, 10)
           
            VStack(alignment:.leading){
                    ForEach(expenseItems) { item in
                        HStack(spacing:10){
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            VStack(alignment:.leading){
                                Text(item.expenseCategory.rawValue)
                                    .fontWeight(.semibold)
                                Text(formatDate(item.date))
                                    .foregroundStyle(.secondary)
                            }
                            Spacer()
                            Text(item.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                                .foregroundStyle(item.amount < 0 ? .red : .green)
                        }
                    }
                   
                  
                }
            
        }
        .padding(.top, 100)
    }
    func formatDate(_ date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy, hh:mm a"
        return formatter.string(from: date)
    }
}

#Preview {
    SummaryView(totalAmount: 4.5, expenseItems: [
        ExpenseModel(expenseCategory: .Food, image: "food", date: Date(), amount: -45.99),
        
        ExpenseModel(expenseCategory:.Groceries, image:"groceries" , date: Date(), amount: -81.99),
        
        ExpenseModel(expenseCategory: .Gas, image: "gas", date: Date(), amount: -20.11),
        
        ExpenseModel(expenseCategory: .Education, image: "education", date: Date(), amount: -900.10)
    ])
        .padding()
}
