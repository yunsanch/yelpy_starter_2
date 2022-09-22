//
//  Restaurant.swift
//  Yelpy
//
//  Created by Yunior Sanchez on 9/17/22.
//  Copyright © 2022 memo. All rights reserved.
//

import Foundation
class Restaurant {
    var imageURL: URL?
    var url: URL?
    var name: String
    var mainCategory: String
    var Phone: String
    var rating: Double
    var reviews: Int
    
    init(dict: [String: Any]) {
        imageURL = URL(string: dict["image_url"] as! String)
        name = dict["name"] as! String
        rating = dict["rating"] as! Double
        reviews = dict["review_count"] as! Int
        Phone = dict["display_phone"] as! String
        url = URL(string: dict["url"] as! String)
        mainCategory = Restaurant.getMainCategory(dict: dict)
             
        
    }
    static func getMainCategory(dict: [String:Any]) -> String{
        let categories = dict["categories"] as! [[String:Any]]
        return categories[0]["title"] as! String
    }
    
}
