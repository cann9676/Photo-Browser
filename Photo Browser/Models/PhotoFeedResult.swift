//
//  PhotoFeedResult.swift
//  Photo Browser
//
//  Created by Chelsea Hannah on 7/20/22.
//

import Foundation

struct PhotoFeedResult: Codable {
    
    var total_results: Int
    var page: Int
    var per_page: Int
    var photos: [Photo]
    //Creating an object called Photo and now requires a new file. 
}
