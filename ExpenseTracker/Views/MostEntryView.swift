//
//  MostEntryView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 03/04/2024.
//

import SwiftUI

struct MostEntryView: View {
    @ObservedObject var expensesViewModel:ExpensesViewModel
    
    var body: some View {
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
}

#Preview {
    MostEntryView(expensesViewModel: ExpensesViewModel())
        .environmentObject(ExpensesViewModel())
}
