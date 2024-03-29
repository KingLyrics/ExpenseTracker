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
            }
            .padding()
        }
    }
}

#Preview {
    AnalyticsView(expensesViewModel: ExpensesViewModel(), darkModeEnabled: .constant(false))
        .environmentObject(ExpensesViewModel())
}
