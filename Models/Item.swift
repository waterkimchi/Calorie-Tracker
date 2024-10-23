//
//  Item.swift
//  Calorie-Tracker
//
//  Created by Hyunsu Lim on 10/23/24.
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
