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
                        .font(.largeTitle)
                })
                Spacer()
                Text("EXPENSES")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: "arrowshape.right")
                
        }
    }
    
}

#Preview {
    HeaderView(darkModeEnabled: .constant(false))
}
