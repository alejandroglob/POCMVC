//
//  Router.swift
//  AlamofirePOC
//
//  Created by Alejandro Rodriguez on 7/11/17.
//  Copyright © 2017 Alejandro Rodriguez. All rights reserved.
//

import Foundation
import Alamofire


enum Router: URLRequestConvertible{
    
    static let urlPath = "http://mocky.io/v2"
    
    
    case hello
    
    var method:HTTPMethod{
        switch self {
        case .hello:
            return .get
        }
    }
    
    var path: String{
        switch self {
        case .hello:
            return "59652d7a26000007193d7661"
        }
    }
    
    
    public func asURLRequest() throws -> URLRequest {
        
        let url = try Router.urlPath.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        return urlRequest
    }
}
