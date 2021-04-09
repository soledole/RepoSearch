//
//  RepoDetailView.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 07/04/2021.
//

import SwiftUI

struct RepoDetailView: View {
    
    // MARK: - PROPERTIES
    
    @EnvironmentObject var repos: Repos
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            if repos.showingRepo == true && repos.selectedRepo != nil {
                
                let image = HelpingFunctions().getImageLink(for: repos.selectedRepo!.full_name)
                let author = "SoleDole"
                
                BackgroundAvatarImage(image: image)
                    .overlay(
                        HStack {
                            BackButton()
                            
                            Spacer()
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                        .padding(.top, 10)
                        .padding(.leading, 10)
                        .onTapGesture {
                            feedback.impactOccurred()
                            
                            withAnimation(.easeOut) {
                                repos.showingRepo = false
                            } //: ANIMATION
                        } //: TAP GESTURE
                    ) //: OVERLAY
                    .overlay(
                        RepoAuthorView(authorName: author, stars: repos.selectedRepo!.stargazers_count)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                            .padding()
                    ) //: OVERLAY
                    .frame(maxWidth: .infinity, maxHeight: 300, alignment: .top)
                
                HStack {
                    Text(repos.selectedRepo!.name)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Link("VIEW ONLINE", destination: (URL(string: "https://github.com/\(author)") ?? URL(string: "https://github.com"))!)
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .frame(width: 130, height: 30)
                        .background(colorBackground)
                        .cornerRadius(16)
                } //: HSTACK
                .padding()
                
                HStack {
                    Text("Commits History")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    Spacer()
                } //: HSTACK
                
                Spacer() //To delete
                
            } else {
                RepoView()
            } //: IF
        } //: ZSTACK
        
    }
}

// MARK: - PREVIEW

struct RepoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailView()
            .environmentObject(Repos())
    }
}
