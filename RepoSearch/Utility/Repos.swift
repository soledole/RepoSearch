//
//  Repos.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 02/04/2021.
//

import Foundation

class Repos: ObservableObject {
    @Published var showingRepo: Bool = false
    @Published var selectedRepo: Repository? = nil
    @Published var repositories: [Repository] = []
    
    @Published var commits: [Commits] = []
}
