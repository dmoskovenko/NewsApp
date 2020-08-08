//
//  NewsList.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import UIKit

class NewsList: NSObject, Codable {
  var articles: [NewsItem] = [NewsItem]()
  
  enum CodingKeys: String, CodingKey {
    case articles = "articles"
  }

}
