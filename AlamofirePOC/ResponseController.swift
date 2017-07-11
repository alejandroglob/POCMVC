//
//  ResponseController.swift
//  AlamofirePOC
//
//  Created by Alejandro Rodriguez on 7/11/17.
//  Copyright © 2017 Alejandro Rodriguez. All rights reserved.
//

import Foundation

protocol UpdateTableProtocol {
    
    func updateTable()
}


class ResponseController:NSObject, ServiceStateDelegate{
    
    var delegate:UpdateTableProtocol?
    
    //cada vez q entra a la clase por primera vez va a cargar
    var state: UIState<Any> = .Loading {
        willSet(newState){
            update(newState: newState)
        }
        
    }
    
    override init(){
        super.init()
        self.update(newState: state)
    }
    
    
    func update(newState: UIState<Any>) {
        switch(state, newState) {
        case (.Loading, .Loading):
            print("Cargando")
        case (.Loading, .Success(let json)):
            self.delegate?.updateTable()
        case (.Loading, .Failure(let error)):
            print(error)
        default:
            break
        }
    }
}
