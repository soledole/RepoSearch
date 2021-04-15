//
//  CommitsModel.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 13/04/2021.
//

import Foundation

struct Commits: Codable {
    let commit: Commit
}

struct Commit: Codable {
    let author: Author
    let message: String
}

struct Author: Codable {
    let name: String
    let email: String
}
