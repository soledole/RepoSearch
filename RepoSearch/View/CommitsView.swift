//
//  CommitsView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 10/04/2021.
//

import SwiftUI

struct CommitsView: View {
    
    // MARK: - PROPERTIES
    
    @EnvironmentObject var repos: Repos
    
    // MARK: - BODY
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVGrid(columns: gridLayout, alignment: .leading, spacing: columnSpacing, content: {
                
                if !(repos.commits.isEmpty) {
                    ForEach((1...repos.commits.count), id: \.self) {
                        CommitsItemView(number: $0, commitAuthorName: repos.commits[$0-1].commit.author.name, authorEmail: repos.commits[$0-1].commit.author.email, commitMessage: repos.commits[$0-1].commit.message)
                    } //: FOR
                } //: IF
            }) //: GRID
        }) //: SCROLL
        
    }
}

// MARK: - PREVIEW

struct CommitsView_Previews: PreviewProvider {
    static var previews: some View {
        CommitsView()
            .environmentObject(Repos())
    }
}
