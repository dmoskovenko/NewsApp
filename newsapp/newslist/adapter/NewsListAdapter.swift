//
//  NewsListAdapter.swift
//  newsapp
//
//  Created by dima on 08/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import Foundation
import UIKit

class NewsListAdapter: NSObject, UITableViewDelegate, UITableViewDataSource {
 
  private var items: [NewsItem] = [NewsItem]()
  
  override init() {
    super.init()
  }
  
  func setupData(data: [NewsItem]) {
    self.items = [NewsItem]()
    self.items.append(contentsOf: data)
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: NewsListViewCell.cellId, for: indexPath) as? NewsListViewCell else {
      return UITableViewCell()
    }
    
    let item = items[indexPath.row]
    cell.setupItem(item: item)
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableView.automaticDimension
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 0.00001
  }
  
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
    return 0.00001
  }
}
