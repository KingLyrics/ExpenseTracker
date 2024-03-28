//
//  TotalMonthView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct TotalMonthView: View {
    var totalAmount:Double
    
    var body: some View {
        VStack(spacing:20){
            Text("Spent this month")
                .foregroundStyle(.gray)
                .font(.title3)
            Text(totalAmount, format:.currency(code: "USD"))
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    TotalMonthView(totalAmount: -654.50)
}
