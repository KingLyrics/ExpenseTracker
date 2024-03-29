//
//  AnalyticsView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI

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
              
            }
            .padding()
        }
    }
}

#Preview {
    AnalyticsView(expensesViewModel: ExpensesViewModel(), darkModeEnabled: .constant(false))
        .environmentObject(ExpensesViewModel())
}
