//
//  Webservices.swift
//  NEWS
//
//  Created by Kamil Gucik on 21/04/2020.
//  Copyright © 2020 Kamil Gucik. All rights reserved.
//

import Foundation

class Webservices {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }.resume()
    }
    
}
