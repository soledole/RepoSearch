//
//  BackButton.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 08/04/2021.
//

import SwiftUI

struct BackButton: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        
        HStack {
            Image(systemName: "chevron.left")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12, height: 24)
            
            Text("Back")
        } //: HSTACK
        .foregroundColor(Color.white)
        
    }
}

// MARK: - PREVIEW

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 100, height: 40))
    }
}
