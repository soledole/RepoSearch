//
//  TitleView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 03/04/2021.
//

import SwiftUI

struct TitleView: View {
    
    // MARK: - PROPERTIES
    
    var text: String
    
    // MARK: - BODY
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.horizontal)
    }
}

// MARK: - PREVIEW

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(text: "Title name")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
