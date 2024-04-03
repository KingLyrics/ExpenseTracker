//
//  ChartView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 03/04/2024.
//

import SwiftUI
import Charts

struct ChartView: View {
    @ObservedObject var expensesViewModel:ExpensesViewModel

    var body: some View {
        if expensesViewModel.expenseItems.isEmpty {
          Text("No items")
        } else {
          Chart(expensesViewModel.getChartDataByMonth()) { expense in
            BarMark(x: .value("Month", expense.date, unit: .month),
                      y: .value("Amount", expense.amount))
              .foregroundStyle(.pink.gradient)
          }
          .frame(height: 180)
          .padding(.top, 30)
        }
    }
}

#Preview {
    ChartView(expensesViewModel: ExpensesViewModel())
        .environmentObject(ExpensesViewModel())
}
