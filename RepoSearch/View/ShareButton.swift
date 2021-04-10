//
//  ShareButton.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 10/04/2021.
//

import SwiftUI

struct ShareButton: View {
    
    // MARK: - PROPERTIES
    
    let linkToShare: String
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: shareSheet) {
            Spacer()
            
            HStack {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 20, weight: .semibold, design: .default))
                
                Text("Share Repo")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
            } //: HSTACK
            .padding(.vertical)
            
            Spacer()
        } //: BUTTON
        .background(colorBackground)
        .cornerRadius(16)
        
    }
    
    func shareSheet() {
        guard let data = URL(string: linkToShare) else { return }
                let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
                UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}

// MARK: - PREVIEW

struct ShareButton_Previews: PreviewProvider {
    static var previews: some View {
        ShareButton(linkToShare: "https://github.com")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
