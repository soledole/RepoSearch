//
//  CommitsItemView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 10/04/2021.
//

import SwiftUI

struct CommitsItemView: View {
    
    // MARK: - PROPERTIES
    
    let number: Int
    let commitAuthorName: String
    let authorEmail: String
    let commitMessage: String
    
    // MARK: - BODY
    
    var body: some View {
        
        HStack {
            VStack {
                Spacer()
                
                ZStack {
                    Circle()
                        .fill(colorBackground)
                        .frame(width: 40, height: 40, alignment: .center)
                    
                    Text("\(number)")
                        .font(.title2)
                } //: ZSTACK
                
                Spacer()
            } //: VSTACK
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(commitAuthorName)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .textCase(.uppercase)
                    .foregroundColor(.blue)
                
                Text(authorEmail)
                
                Text(commitMessage)
                    .foregroundColor(colorElements)
            }) //: VSTACK
        } //: HSTACK
        .frame(height: 80)
        
    }
}

// MARK: - PREVIEW

struct CommitsItemView_Previews: PreviewProvider {
    static var previews: some View {
        CommitsItemView(number: 1, commitAuthorName: "commit author name", authorEmail: "email@authorname.com", commitMessage: "This is a short commit message.")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
