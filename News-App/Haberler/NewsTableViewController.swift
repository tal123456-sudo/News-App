//
//  NewsTableViewController.swift
//  Haberler
//
//  Created by Talha VAROL on 25.03.2022.
//  Copyright © 2020 TurkishKit. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    
    // MARK: - Functions
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsData.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentNewsItem = NewsData[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! NewsTableViewCell
        cell.newsImage.setImage(fromUrl: currentNewsItem.thumbnail)
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        
        let dateString = formatter.string(from: currentNewsItem.pubDate)
        cell.dateLabel.text = dateString
        
        cell.headerNewsLabel.text = currentNewsItem.title
        
        cell.categoriLabel.text = currentNewsItem.categories.joined(separator: "|")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedNews = NewsData[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        UIApplication.shared.open(urlString: selectedNews.link)
    }
    
}
