//
//  INewsListPresenter.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import Foundation

protocol INewsListPresenter : class {
  var view: INewsListView? {get set}
  
  func getNews()
}
