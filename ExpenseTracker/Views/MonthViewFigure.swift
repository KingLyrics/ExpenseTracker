//
//  MonthViewFigure.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 03/04/2024.
//

import SwiftUI

struct MonthViewFigure: View {
    @ObservedObject var expensesViewModel:ExpensesViewModel

    var body: some View {
        HStack {
            VStack(alignment: .leading,spacing: 10){
                Text(expensesViewModel.totalAmount, format:.currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .font(.title)
                    .foregroundStyle(expensesViewModel.totalAmount < 0 ? .red  : .black)
                Text("Total spent this month ")
                    .font(.headline)
                    .foregroundStyle(.gray)
            }
            .padding(.top, 30)
            
            Spacer()
        }
    }
}
#Preview {
    MonthViewFigure(expensesViewModel: ExpensesViewModel())
        .environmentObject(ExpensesViewModel())
}
