//
//  ContentView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 26/03/2021.
//

import SwiftUI

struct RepoView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                SearchBar(searchText: searchText, isSearching: isSearching)
                
                ForEach((0..<20).filter({ "\($0)".contains(searchText) || searchText.isEmpty }), id: \.self) { item in
                    
                    HStack {
                        Text("item \(item)")
                        Spacer()
                    } //: HSTACK
                    .padding()
                    
                    Divider()
                        .background(Color(.systemGray5))
                        .padding(.leading)
                    
                } //: FOR
                
            } //: SCROLL
            .navigationTitle("Search")
            
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RepoView()
    }
}
