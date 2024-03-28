//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HeaderView()
            Spacer()
          TotalMonthView()
            Spacer()
            VStack{
                HStack{
                    Text("Today")
                    Spacer()
                    Text("$ -756.50")
                    
                }
                .foregroundStyle(.gray)
                .font(.headline)

            }

            Spacer()
        }
        .padding(20)
    }
}

#Preview {
    ContentView()
}
