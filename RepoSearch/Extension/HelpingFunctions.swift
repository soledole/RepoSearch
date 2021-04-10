//
//  HelpingFunctions.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 08/04/2021.
//

import Foundation

class HelpingFunctions {
    func getAuthorName(for string: String) -> String {
        let separeteFullName = string.components(separatedBy: "/")
        return separeteFullName[0]
    }
}
