//
//  AnalyticsHeader.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI

struct AnalyticsHeaderView: View {
    @Binding var darkModeEnabled:Bool

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
            Text("ANALYTICS")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.title3)
            Spacer()
            Button(action: {
            }, label: {
                Image(systemName: "chart.bar")
                    .font(.title2)
                    .foregroundStyle(darkModeEnabled ? .white : .black)
            })
        }
    }
}

#Preview {
    AnalyticsHeaderView(darkModeEnabled: .constant(false))
}
