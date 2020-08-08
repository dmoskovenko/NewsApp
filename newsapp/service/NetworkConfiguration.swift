//
//  NetworkConfiguration.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import Foundation

class NetworkConfiguration: NSObject, INetworkConfiguration{
  private let apiKey = "8277fb0bfd7b46aebe84e04e4a238c55"
  private let url = "http://newsapi.org/v2/"
  
  func getHeaders() -> [String : String] {
    return ["X-Api-Key": apiKey]
  }
  
  func getBaseUrl()->String {
    return url
  }
  
}
