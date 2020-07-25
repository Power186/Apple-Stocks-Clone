//
//  StockListViewModel.swift
//  Stocks and News
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    @Published var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    @Published var news: [NewsArticleViewModel] = [NewsArticleViewModel]()
    
    func load() {
        fetchNews()
        fetchStocks()
    }
    
    private func fetchNews() {
        
        Webservice().getTopNews { news in
            if let news = news {
                self.news = news.map(NewsArticleViewModel.init)
                
            }
        }
        
    }
    
    private func fetchStocks() {
        
        Webservice().getStocks { stocks in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
    
}
