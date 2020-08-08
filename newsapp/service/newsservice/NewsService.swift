//
//  NewsService.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import Foundation

class NewsService : NSObject {
  let networkService = NetworkService()
  
  func getNews(completion: @escaping(ContentResponse<NewsList>)->Void) {
    self.networkService.request(url: "top-headlines?country=ru&language=ru", parameters: [:], method: .get) { (result: ContentResponse<NewsList>) in
      completion(result)
    }
  }
}
