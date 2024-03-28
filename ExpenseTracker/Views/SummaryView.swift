//
//  SummaryView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct SummaryView: View {
    let totalAmount:Double
    let expenseItems:[ExpenseModel]
    
    var body: some View {
        VStack(alignment:.leading){
                HStack{
                    Text("Today")
                    Spacer()
                    Text(totalAmount, format:.currency(code: "USD"))
                    
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
                                Text(item.timePurchased)
                                    .foregroundStyle(.secondary)
                            }
                            Spacer()
                            Text(item.amount, format: .currency(code: "USD"))
                                .foregroundStyle(item.amount < 0 ? .red : .green)
                        }
                    }
                   
                  
                }
            
        }
    }
}

#Preview {
    SummaryView(totalAmount: 450.80, expenseItems: [
        ExpenseModel(expenseCategory: .Food, image: .food, timePurchased: "2:45Am", amount: -45.99),
        
        ExpenseModel(expenseCategory:.Groceries, image:.groceries , timePurchased: "1:00PM", amount: -81.99),
        
        ExpenseModel(expenseCategory: .Gas, image: .gas, timePurchased: "3:00PM", amount: -20.11)
    ])
        .padding()
}
