//
//  NewsListViewCell.swift
//  newsapp
//
//  Created by dima on 07/08/2020.
//  Copyright © 2020 Dmitry Moskovenko. All rights reserved.
//

import UIKit
import Kingfisher

class NewsListViewCell: UITableViewCell {
  static let cellId = String(describing: NewsListViewCell.self)

  @IBOutlet weak var newsImageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var contentLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
  
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  func setupItem(item: NewsItem) {
    self.titleLabel.text = item.title ?? ""
    self.contentLabel.text = item._description ?? ""
    self.dateLabel.text = item.publishedAt ?? ""

    if let imageUrl = item.urlToImage, let url = URL(string: imageUrl) {
      self.newsImageView?.kf.setImage(with: url)
    } else {
      self.newsImageView?.image = nil
    }
  }
  
}
