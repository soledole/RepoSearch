//
//  RepositoryModel.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 02/04/2021.
//

import SwiftUI

struct Repositories: Codable {
    let items: [Repository]
}

struct Repository: Codable, Identifiable {
    let id: Int
    let name: String
    let stargazers_count: Int
    let full_name: String
}
