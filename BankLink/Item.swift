//
//  Item.swift
//  BankLink
//
//  Created by Diego Cortes on 12/12/23.
//

import Foundation
import UIKit

class Item {
    var description: String
    var amount: Float
    var date: String
    
    init?(description: String, amount: Float, date: String) {
        self.amount = amount
        self.description = description
        self.date = date
    }
}
