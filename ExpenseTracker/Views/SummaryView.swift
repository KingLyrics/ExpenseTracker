//
//  SummaryView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct SummaryView: View {
    let totalAmount:Double
    
    var body: some View {
        VStack{
                HStack{
                    Text("Today")
                    Spacer()
                    Text(totalAmount, format:.currency(code: "USD"))
                    
                }
                .foregroundStyle(.secondary)
                .font(.headline)
                .padding(.bottom, 10)
           
                HStack{
                    HStack(spacing:10){
                        Image(.food)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25)
                        VStack(alignment:.leading){
                            Text("Food")
                                .fontWeight(.semibold)
                            Text("2:45 AM")
                                .foregroundStyle(.secondary)
                        }
                    }
                    Spacer()
                    Text("$ -80")
                        .foregroundStyle(.red)
                }
                
            
            
        }
    }
}

#Preview {
    SummaryView(totalAmount: 450.80)
        .padding()
}
