//
//  Webservice.swift
//  Stocks and News
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import Foundation

class Webservice {
    
    func getTopNews(completion: @escaping (([Article]?) -> Void)) {
        
        // use url
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/top-news") else {
            fatalError("URL is not correct")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let articles = try? JSONDecoder().decode([Article].self, from: data)
            
            DispatchQueue.main.async {
                completion(articles)
            }
            
        }.resume()
    }
    
    func getStocks(completion: @escaping (([Stock]?) -> Void)) {
        
        // use url
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/stocks") else {
            fatalError("URL is not correct")
        }
        
        // get data
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            // if no stocks, fire completion handler, if stocks then get stocks
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            stocks == nil ? completion(nil) : completion(stocks)
            
        }.resume()
    }
}
