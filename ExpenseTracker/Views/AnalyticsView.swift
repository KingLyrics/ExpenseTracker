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
            VStack(alignment: .leading){
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
                ChartView(expensesViewModel: expensesViewModel)
                HighestSpentCardView(expensesViewModel: expensesViewModel)
                
                if let mostEntryData = expensesViewModel.findMostFrequentImageName(){
                    VStack{
                        HStack{
                            Image(systemName: "tag.fill")
                                .padding(8)
                                .background(.black)
                                .clipShape(Circle())
                                .foregroundStyle(.white)
                            VStack(alignment: .leading){
                                Text("Most Entry")
                                Text("\(mostEntryData.count) on \(mostEntryData.name.capitalized)")
                            }
                            Spacer()
                            Text(abs(mostEntryData.totalAmount), format:.currency(code: Locale.current.currency?.identifier ?? "USD"))
                                .foregroundStyle(.white)
                            
                        }
                        .foregroundStyle(.white)
                    
                    }
                    .padding(10)
                    .background(.gray)
                    .padding(.top, 10)
                    
                    
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
