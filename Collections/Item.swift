//
//  Item.swift
//  Collections
//
//  Created by Christian Rodriguez on 11/3/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
