//
//  HelpingFunctions.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 08/04/2021.
//

import Foundation

class HelpingFunctions {
    func getImageLink(for string: String) -> String {
        let separateFullName = string.components(separatedBy: "/")
        return "https://github.com/\(separateFullName[0]).png"
    }
}
