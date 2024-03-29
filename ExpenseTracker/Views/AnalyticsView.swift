//
//  AnalyticsView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI
import Charts

struct AnalyticsView: View {
    
    @ObservedObject var expensesViewModel:ExpensesViewModel
    @Binding var darkModeEnabled:Bool
    
    
    
    var body: some View {
        ScrollView{
            VStack{
                AnalyticsHeaderView(darkModeEnabled: $darkModeEnabled)
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
                
                Chart(expensesViewModel.getChartDataByMonth()){ expense in
                    BarMark(x: .value("Month", expense.date, unit:.month),
                            y: .value("Amount", expense.amount)
                            )
                    .foregroundStyle(.pink.gradient)
                }
                .frame(height: 180)
                .padding(.top, 30)
                
              
            }
            .padding()
        }
    }
}

#Preview {
    AnalyticsView(expensesViewModel: ExpensesViewModel(), darkModeEnabled: .constant(false))
        .environmentObject(ExpensesViewModel())
}
