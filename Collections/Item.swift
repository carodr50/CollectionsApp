//
//  Item.swift
//  Collections
//
//  Created by Christian Rodriguez on 11/3/24.
//

import Foundation
import SwiftData

@Model final class Item : Identifiable {
    var id : String
    var pName : String
    var pCost : Decimal
    var pAmount : Int
    var pImage : String
    
    init(id: String, pName: String, pCost: Decimal, pAmount: Int, pImage: String) {
        self.id = id
        self.pName = pName
        self.pCost = pCost
        self.pAmount = pAmount
        self.pImage = pImage
    }
}
