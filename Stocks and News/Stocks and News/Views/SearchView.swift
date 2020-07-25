//
//  SearchView.swift
//  Stocks and News
//
//  Created by Scott on 7/25/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchTerm: String
    
    var body: some View {
        
        HStack {
            Spacer()
            Image(systemName: "magnifyingglass")
            
            TextField("Search", text: self._searchTerm)
                .foregroundColor(Color.primary)
                .padding(10)
            
            Spacer()
        }.foregroundColor(.secondary)
        
                .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            .padding(10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchTerm: .constant(""))
    }
}
