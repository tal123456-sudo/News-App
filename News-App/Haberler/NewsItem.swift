//
//  News.swift
//  Haberler
//
//  Created by Talha VAROL on 25.03.2022.
//  Copyright © 2020 TurkishKit. All rights reserved.
//

import Foundation
import UIKit

struct NewsItem: Codable {
    
    // MARK: - Properties
    var thumbnail:String
    var pubDate:Date
    var title: String
    var categories: [String]
    let link: String
}
