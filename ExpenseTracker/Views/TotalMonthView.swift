//
//  TotalMonthView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct TotalMonthView: View {
    var body: some View {
        VStack(spacing:20){
            Text("Spent this month")
                .foregroundStyle(.gray)
                .font(.title3)
            Text("$ -765.50")
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    TotalMonthView()
}
