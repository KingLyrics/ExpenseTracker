//
//  HeaderView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 28/03/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
            HStack{
                Image(systemName: "moon.stars")
                    .font(.largeTitle)
                Spacer()
                Text("EXPENSES")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                Image(systemName: "arrowshape.right")
                
        }
    }
    
}

#Preview {
    HeaderView()
}
