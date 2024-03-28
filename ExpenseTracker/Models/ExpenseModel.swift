//
//  ExpenseModel.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import Foundation
import SwiftUI


struct ExpenseModel:Identifiable{
    var id = UUID()
    let expenseCategory:ExpenseType
    let image:ImageResource
    let timePurchased:String
    let amount:Double
}


enum ExpenseType:String,CaseIterable{
    case Food
    case Vacation
    case Clothes
    case Gas
    case Gift
    case Groceries
    case Home
    case Pill
    case Education
    
    var iconImage:ImageResource{
        switch self {
        case .Food:
                .food
        case .Vacation:
                .vacation
        case .Clothes:
                .clothes
        case .Gas:
                .gas
        case .Gift:
                .gift
        case .Groceries:
                .groceries
        case .Home:
                .home
        case .Pill:
                .pill
        case .Education:
                .education
        }
    }
}
