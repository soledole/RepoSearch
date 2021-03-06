//
//  ContentView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 26/03/2021.
//

import SwiftUI

struct RepoView: View {
    
    // MARK: - PROPERTIES
    
    @EnvironmentObject var repos: Repos
    
    // MARK: - BODY
    
    var body: some View {
        
        if repos.showingRepo == false {
            VStack {
                HStack {
                    TitleView(text: "Search")
                    Spacer()
                }
                .padding(.top, 50)
                .padding(.bottom, 5)
                    
                SearchBar()
                    
                HStack {
                    LabelView(text: "Repositories")
                    Spacer()
                } //: HSTACK
                .padding(.top, 20)
                .padding(.bottom, 10)
                    
                RepositoryView()
            } //: VSTACK
        } else {
            RepoDetailView()
        } // : IF
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RepoView()
            .environmentObject(Repos())
    }
}
