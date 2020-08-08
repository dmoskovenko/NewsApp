//
//  NewsItem.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import Foundation

class NewsItem: NSObject, Codable {
  var title: String? = ""
  var author: String? = ""
  var urlToImage: String? = ""
  var publishedAt: String? = ""
  var _description: String? = ""
  var content: String? = ""
  
  enum CodingKeys: String, CodingKey {
    case title = "title"
    case author = "author"
    case urlToImage = "urlToImage"
    case publishedAt = "publishedAt"
    case _description = "description"
    case content = "content"
  }

}
