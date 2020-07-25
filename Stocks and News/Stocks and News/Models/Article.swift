//
//  Article.swift
//  Stocks and News
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

struct Article: Decodable {
    let title: String
    let imagleURL: String
    let publication: String
}
