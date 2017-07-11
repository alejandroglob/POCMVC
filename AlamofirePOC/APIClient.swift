//
//  API.swift
//  AlamofirePOC
//
//  Created by Alejandro Rodriguez on 7/11/17.
//  Copyright © 2017 Alejandro Rodriguez. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class APIClient:ServiceStateHandler{
    
    var delegate: ServiceStateDelegate?
    
    
    static let sharedInstance = APIClient()
    
    
    func getHelloEndPoint(delegate: ResponseController){
        
        self.delegate = delegate
        
        
        Alamofire.request(Router.hello).responseJSON { (response) in
            
            
            switch response.result{
            case .success(let value):
                let _ = JSON(value)
               
                self.delegate?.state = .Success(value)
            case .failure:
                self.delegate?.state = .Failure("Error")
                
            }
        }
    }
}
