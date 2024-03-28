//
//  AddExpenseView.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import SwiftUI

struct AddExpenseView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            Form{
                
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done"){
                        dismiss()
                    }
                }
                
            }
            .navigationTitle("Add Expense")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


#Preview {
    AddExpenseView()
}
