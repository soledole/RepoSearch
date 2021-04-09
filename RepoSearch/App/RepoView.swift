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
        
        ZStack {
            if repos.showingRepo == false {
                VStack {
                    HStack {
                        TitleView(text: "Search")
                        Spacer()
                    }
                    .padding(.top, 50)
                    .padding(.bottom, 5)
                    
                    SearchBar()
                    
                    RepositoryView()
                } //: VSTACK
            } else {
                RepoDetailView()
            } // : IF
        } //: ZSTACK
        
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RepoView()
            .environmentObject(Repos())
    }
}
