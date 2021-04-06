//
//  RepositoryItemView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 06/04/2021.
//

import SwiftUI
import URLImage

struct RepositoryItemView: View {
    
    // MARK: - PROPERTIES
    
    var name: String
    var stars: Int
    var image: String
    
    // MARK: - BODY
    
    var body: some View {
        
        HStack(spacing: 10) {
            ZStack {
                URLImage(url: URL(string: image)!) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 60, height: 60)
            }
            .cornerRadius(12)
            .padding(10)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(name)
                    .lineLimit(1)
                
                HStack {
                    Image(systemName: "star")
                    Text("\(stars)")
                } //: HSTACK
                .foregroundColor(colorElements)
            }) //: VSTACK
            
            Spacer()
            
            VStack {
                Spacer()
                Image(systemName: "chevron.right")
                Spacer()
            } //: VSTACK
            .padding()
        } //: HSTACK
        .background(colorBackground.cornerRadius(8))
        .frame(height: 80)
        
    }
}

struct RepositoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryItemView(name: "Repo Title", stars: 997, image: "https://github.com/soledole.png")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
