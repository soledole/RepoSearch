//
//  BackgroundAvatarImage.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 08/04/2021.
//

import SwiftUI
import URLImage

struct BackgroundAvatarImage: View {
    
    // MARK: - PROPERTIES
    
    var image: String
    
    // MARK: - BODY
    
    var body: some View {
        
        URLImage(url: URL(string: image)!) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)

        } //: URLImage
        .ignoresSafeArea(edges: .top)
        .frame(width: .infinity, height: 300, alignment: .bottom)
        
    }
}

// MARK: - PREVIEW

struct BackgroundAvatarImage_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAvatarImage(image: "https://github.com/soledole.png")
    }
}
