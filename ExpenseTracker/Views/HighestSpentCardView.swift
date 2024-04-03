//
//  HighestSpentCardView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 03/04/2024.
//

import SwiftUI

struct HighestSpentCardView: View {
    @ObservedObject var expensesViewModel:ExpensesViewModel

    var body: some View {
        VStack{
            HStack{
                Image(systemName: "arrow.up.forward")
                    .padding(8)
                    .background(.black)
                    .clipShape(Circle())
                    .foregroundStyle(.white)
                VStack(alignment: .leading){
                    Text("Highest Spent")
                    if let dateofExpense = expensesViewModel.findHighestExpense(){
                        Text(formatDate(dateofExpense.date))
                    }else{
                        Text("No expense yet")
                    }
                }
                .foregroundStyle(.white)

                Spacer()
                if let highestExpense = expensesViewModel.findHighestExpense(){
                    Text(abs(highestExpense.amount), format:.currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .foregroundStyle(.white)
                }else{
                    Text("No expense yet")
                        .foregroundStyle(.white)
                }
            }
            .padding(10)
            .background(.gray)
            
        }
        .padding(.top, 50)

    }
    func formatDate(_ date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        return formatter.string(from: date)
    }
}

#Preview {
    HighestSpentCardView(expensesViewModel: ExpensesViewModel())
        .environmentObject(ExpensesViewModel())

}
