//
//  HeaderView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct HeaderView: View {
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
                Text("EXPENSES")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title3)
                Spacer()
                Image(systemName: "plus")
                    .font(.title2)
                
        }
    }
    
}

#Preview {
    HeaderView(darkModeEnabled: .constant(false))
}
