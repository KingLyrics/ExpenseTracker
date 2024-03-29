//
//  ExpenseModel.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import Foundation


struct ExpenseModel:Identifiable,Decodable, Encodable{
    
    var id:UUID
    let expenseCategory:ExpenseType
    let image:String
    let date:Date
    let amount:Double
    
    init(id: UUID = UUID(), expenseCategory: ExpenseType, image: String, date: Date, amount: Double) {
        self.id = id
        self.expenseCategory = expenseCategory
        self.image = image
        self.date = date
        self.amount = amount
    }
    
    enum CodingKeys: CodingKey {
      case id
      case expenseCategory
      case image
      case date
      case amount
    }
}





enum ExpenseType:String,CaseIterable,Decodable, Encodable{
    case Food
    case Vacation
    case Clothes
    case Gas
    case Gift
    case Groceries
    case Home
    case Health
    case Education
    
    var iconImage:String{
        switch self {
        case .Food:
            self.rawValue.lowercased()
        case .Vacation:
            self.rawValue.lowercased()
        case .Clothes:
            self.rawValue.lowercased()
        case .Gas:
            self.rawValue.lowercased()
        case .Gift:
            self.rawValue.lowercased()
        case .Groceries:
            self.rawValue.lowercased()
        case .Home:
            self.rawValue.lowercased()
        case .Health:
            self.rawValue.lowercased()
        case .Education:
            self.rawValue.lowercased()
        }
    }
}
