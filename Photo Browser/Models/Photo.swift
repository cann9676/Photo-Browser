//
//  Photo.swift
//  Photo Browser
//
//  Created by Chelsea Hannah on 7/20/22.
//

import Foundation

struct Photo: Codable {
    
    var id: Int
    var photographer: String
    var photographer_url: String
    var photographer_tag: String {
        return photographer_url.replacingOccurrences(of: "https://www.pexels.com/", with: "")
        //This line will allow the first part of the url to disapper and the @photographer handle will be shown.
    }
    
}
