//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var darkModeEnabled:Bool = false

    var body: some View {
        VStack{
            HeaderView(darkModeEnabled: $darkModeEnabled)
            Spacer()
            TotalMonthView()
            Spacer()
            SummaryView()
                Spacer()
            }
            .padding(20)
            .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
