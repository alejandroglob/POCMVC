//
//  ViewController.swift
//  AlamofirePOC
//
//  Created by Alejandro Rodriguez on 7/11/17.
//  Copyright © 2017 Alejandro Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UpdateTableProtocol {

    var handler:ServiceStateHandler?
    
//    init(handler: ServiceStateHandler) {
//        self.handler = handler
//        super.init(nibName: nil, bundle: nil)
//    }
//    @available(*, unavailable)
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.handler = ServiceStateHandler()
        
        let res = ResponseController()
        res.delegate = self
        
        
        let responseController:ResponseController = res
        responseController.delegate = self
        
        APIClient.sharedInstance.getHelloEndPoint(delegate: responseController)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func updateTable() {
        print("hola")
    }

}

