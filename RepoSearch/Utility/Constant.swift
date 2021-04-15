//
//  Constant.swift
//  RepoSearch
//
//  Created by Jędrzej Kuś on 27/03/2021.
//

import SwiftUI

// DATA
let testVersion = true
let commitsPerPage = 35

// COLOR
let colorElements: Color = Color(.gray)
let colorBackground: Color = Color("ColorBackground")

// LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 1)
}

// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
