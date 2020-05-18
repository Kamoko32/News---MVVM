//
//  Article.swift
//  NEWS
//
//  Created by Kamil Gucik on 21/04/2020.
//  Copyright © 2020 Kamil Gucik. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
