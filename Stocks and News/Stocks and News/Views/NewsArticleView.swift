//
//  NewsArticleView.swift
//  Stocks and News
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct NewsArticleView: View {
    
    let newsArticles: [NewsArticleViewModel]
    
    var body: some View {
        
        let screenSize = UIScreen.main.bounds.size
        
        return VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                Text("Top News")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(2)
                
                    Text("from News")
                        .foregroundColor(Color.gray)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(2)
                
                ScrollView {
                    VStack {
                        ForEach(self.newsArticles, id: \.title) { article in
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(article.publication)
                                        .foregroundColor(Color.white)
                                        .font(.custom("Arial", size: 22))
                                        .fontWeight(.bold)
                                    
                                    Text(article.title)
                                        .font(.custom("Arial", size: 22))
                                        .foregroundColor(Color.white)
                                }
                                
                                Spacer()
                            }
                        }
                    }.frame(maxWidth: .infinity)
                }
                
            }
            
        }.frame(width: screenSize.width, height: screenSize.height)
            .background(Color(red: 27/255, green: 28/255, blue: 30/255))
            .cornerRadius(20)
    }
}

struct NewsArticleView_Previews: PreviewProvider {
    static var previews: some View {
        
        let article = Article(title: "News Title", imagleURL: "image", publication: "The WallStreet Journal")
        
        return NewsArticleView(newsArticles: [NewsArticleViewModel(article: article)])
    }
}
