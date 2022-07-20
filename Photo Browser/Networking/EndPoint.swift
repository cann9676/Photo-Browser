//
//  EndPoint.swift
//  Photo Browser
//
//  Created by Chelsea Hannah on 7/20/22.
//

import Foundation

//Endpoint is going to be a protocol that will provide a base URL to an query.
//API key is also stored here

protocol EndPoint {
    var base: String { get }
    var path: String { get }
    var query: String { get }
    
}

extension EndPoint {
    var authHeader: String {
        //authHeader is the API key
        return API.key
    }
    
    var urlComponents: URLComponents {
        var components = URLComponents(string: base) ?? URLComponents()
        //?? means if nothing is provided.
        components.path = path
        components.query = query
        return components
    }
    
    
    var request: URLRequest {
        let url = urlComponents.url ?? URL(string: "https://www.google.com")!
        var request = URLRequest(url: url)
        request.setValue(authHeader, forHTTPHeaderField: "Authorization")
        return request
    }
}
//Extension allows you to add more functionality to the protocol
//protocols do not allow any definitions in the protocol body
//If you need a definition always include it in the extension
