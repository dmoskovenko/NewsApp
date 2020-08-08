//
//  INetworkService.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import Foundation

protocol INetworkService {
  func request<T>(url: String, parameters: [String: Any], method: Methods, completion: @escaping(ContentResponse<T>)->Void) where T: Codable
}
