//
//  Stock.swift
//  Stocks and News
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

// Stock will take in JSON and decode it to its structure.
struct Stock: Decodable {
    
    let symbol: String
    let description: String
    let price: Double
    let change: String
}
