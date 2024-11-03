//
//  Item.swift
//  Collections
//
//  Created by Christian Rodriguez on 11/3/24.
//

import Foundation
import SwiftData

@Model
final class Item : Identifiable {
    var id: UUID
    var pName: String
    var pCost: Decimal
    var pAmount: Int
    var pImage: String
    var timestamp: Date
    
    init(timestamp: Date, pName: String, pCost: Decimal, pAmount: Int, pImage: String) {
        self.id = UUID()
        self.timestamp = timestamp
        self.pName = pName
        self.pCost = pCost
        self.pAmount = pAmount
        self.pImage = pImage
    }
}
