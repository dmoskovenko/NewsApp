//
//  INewsListView.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import Foundation

protocol INewsListView :class {
  func setupData(data: [NewsItem])
}
