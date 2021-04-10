//
//  CommitsView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 10/04/2021.
//

import SwiftUI

struct CommitsView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVGrid(columns: gridLayout, alignment: .leading, spacing: columnSpacing, content: {
                Text("Hello world")
            }) //: GRID
        }) //: SCROLL
        
    }
}

// MARK: - PREVIEW

struct CommitsView_Previews: PreviewProvider {
    static var previews: some View {
        CommitsView()
    }
}
