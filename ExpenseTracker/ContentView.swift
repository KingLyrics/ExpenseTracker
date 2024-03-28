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
            SummaryView()
                Spacer()
            }
            .padding(20)
        
    }
}

#Preview {
    ContentView()
}
