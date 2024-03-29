//
//  AnalyticsView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI

struct AnalyticsView: View {
    
    @Binding var darkModeEnabled:Bool
    @ObservedObject var expensesViewModel:ExpensesViewModel


    var body: some View {
        HStack{
            Button(action: {
                    darkModeEnabled.toggle()
                
            }, label: {
                Image(systemName: darkModeEnabled ?  "sun.min" : "moon.stars")
                    .font(.title)
                    .foregroundStyle(darkModeEnabled ? .white : .black)
            })
            Spacer()
            Text("EXPENSES")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.title3)
            Spacer()
            Button(action: {
            }, label: {
                Image(systemName: "plus")
                    .font(.title2)
            })
           
            
    }
}
    }

#Preview {
    AnalyticsView(darkModeEnabled: .constant(false), expensesViewModel: ExpensesViewModel())
        .environmentObject(ExpensesViewModel())
}
