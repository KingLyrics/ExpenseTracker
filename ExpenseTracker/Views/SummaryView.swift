//
//  SummaryView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct SummaryView: View {
    let totalAmount:Double
    let expenseItem:ExpenseModel
    
    var body: some View {
        VStack{
                HStack{
                    Text("Today")
                    Spacer()
                    Text(totalAmount, format:.currency(code: "USD"))
                    
                }
                .foregroundStyle(.secondary)
                .font(.headline)
                .padding(.bottom, 10)
           
                HStack{
                    HStack(spacing:10){
                        Image(expenseItem.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                        VStack(alignment:.leading){
                            Text(expenseItem.expenseCategory.rawValue)
                                .fontWeight(.semibold)
                            Text(expenseItem.timePurchased)
                                .foregroundStyle(.secondary)
                        }
                    }
                    Spacer()
                    Text(expenseItem.amount, format:.currency(code: "USD"))
                        .foregroundStyle(expenseItem.amount < 0 ? .red : .green)
                }
            
        }
    }
}

#Preview {
    SummaryView(totalAmount: 450.80, expenseItem:  ExpenseModel(expenseCategory: .Food, image: .food, timePurchased: "2:45Am", amount: 45.99))
        .padding()
}
