//
//  SummaryView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct SummaryView: View {
    var body: some View {
        VStack{
                HStack{
                    Text("Today")
                    Spacer()
                    Text("$ -765.50")
                    
                }
                .foregroundStyle(.gray)
                .font(.headline)
                .padding(.bottom, 10)
            
                    HStack{
                        HStack(spacing:10){
                            Image(.pizza)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            VStack(alignment:.leading){
                                Text("Food")
                                    .fontWeight(.semibold)
                                Text("2:45 AM")
                                    .foregroundStyle(.gray)
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
    SummaryView()
        .padding()
}
