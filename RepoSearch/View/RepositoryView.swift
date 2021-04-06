//
//  RepositoryView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 06/04/2021.
//

import SwiftUI

struct RepositoryView: View {
    
    // MARK: - PROPERTIES
    
    @EnvironmentObject var repos: Repos
    
    // MARK: - BODY
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            LazyVGrid(columns: gridLayout, alignment: .leading, spacing: columnSpacing, content: {
                
                ForEach(repos.repositories) { repository in
                    
                    let sepFullName = repository.full_name.components(separatedBy: "/")
                    let image = "https://github.com/\(sepFullName[0]).png"
                    
                    RepositoryItemView(name: repository.name, stars: repository.stargazers_count, image: image)
                }
            }) //: GRID
            .padding(.horizontal, 15)
        }) //: SCROLL
        
    }
}

// MARK: - PREVIEW

struct RepositoryView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryView()
            .environmentObject(Repos())
    }
}