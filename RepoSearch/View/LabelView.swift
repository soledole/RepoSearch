//
//  LabelView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 28/03/2021.
//

import SwiftUI

struct LabelView: View {
    
    // MARK: - PROPERTIES
    
    var text: String
    
    // MARK: - BODY
    
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.horizontal)
    }
}

// MARK: - PREVIEW

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(text: "Label name")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
