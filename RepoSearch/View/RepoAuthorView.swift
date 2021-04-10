//
//  RepoAuthorView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 09/04/2021.
//

import SwiftUI

struct RepoAuthorView: View {
    
    // MARK: - PROPERTIES
    
    var authorName: String
    var stars: Int
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            HStack {
                Text("REPO BY")
                    .opacity(0.4)
                
                Spacer()
            } //: HSTACK
            .padding(.bottom, 5)
            
            HStack {
                Text(authorName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(.bottom, 1)
            
            HStack {
                Image(systemName: "star.fill")
                
                Text("\(stars)")
                
                Spacer()
            }
            .opacity(0.4)
        } //: VSTACK
        .foregroundColor(.white)
        
    }
}

// MARK: - PREVIEW

struct RepoAuthorView_Previews: PreviewProvider {
    static var previews: some View {
        RepoAuthorView(authorName: "Repo Author Name", stars: 234)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
