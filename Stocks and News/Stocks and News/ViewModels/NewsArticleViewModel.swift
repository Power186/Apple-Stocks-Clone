//
//  NewsArticleViewModel.swift
//  Stocks and News
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

struct NewsArticleViewModel {
    
    let article: Article
    
    var imageURL: String {
        return self.article.imagleURL
    }
    
    var title: String {
        return self.article.title
    }
    
    var publication: String {
        return self.article.publication.uppercased()
    }
}
