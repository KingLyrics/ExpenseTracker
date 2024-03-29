//
//  ChartModel.swift
//  ExpenseTracker
//
//  Created by Ekomobong Edeme on 29/03/2024.
//

import Foundation

struct ChartModel:Identifiable{
    var id = UUID()
    let date:Date
    let amount:Double
}
