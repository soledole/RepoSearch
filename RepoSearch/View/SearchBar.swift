//
//  SearchBar.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 27/03/2021.
//

import SwiftUI

struct SearchBar: View {
    
    // MARK: - PROPERTIES
    
    @State var searchText = ""
    @State var isSearching = false
    @EnvironmentObject var repos: Repos
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            HStack {
                TextField("Search terms here", text: $searchText, onCommit: {
                    if testVersion == true { print(searchText) }
                    
                    GitHubApi().fetchDataForRepositories(for: searchText) { (repositories) in
                        repos.repositories = repositories
                    } //: API
                }) //: FIELD
                .padding(.leading, 24)
            } //: HSTACK
            .padding()
            .frame(height: 40)
            .background(colorBackground)
            .cornerRadius(12)
            .padding(.horizontal)
            .onTapGesture {
                feedback.impactOccurred()
                isSearching = true
            }
            .overlay(
                HStack {
                    Image(systemName: "magnifyingglass")
                    Spacer()

                    if !(searchText.isEmpty) {
                        
                        Button(action: { searchText = "" }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .padding(.vertical)
                        })
                    }
                } //: HSTACK
                .padding(.horizontal, 32)
                .foregroundColor(colorElements)
            )
            .transition(.move(edge: .trailing))
            .animation(.easeIn)
            
            if isSearching {
                Button(action: {
                    isSearching = false
                    searchText = ""
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }, label: {
                    Text("Cancel")
                        .padding(.trailing)
                        .padding(.leading, 0)
                })
                .transition(.move(edge: .trailing))
                .animation(.easeIn)
            } //: IF
        } //: HSTACK
        
    }
}

// MARK: - PREVIEW

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
            .environmentObject(Repos())
            .previewLayout(.sizeThatFits)
    }
}
