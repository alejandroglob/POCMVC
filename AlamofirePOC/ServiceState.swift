//
//  ServiceState.swift
//  AlamofirePOC
//
//  Created by Alejandro Rodriguez on 7/11/17.
//  Copyright © 2017 Alejandro Rodriguez. All rights reserved.
//

import Foundation

enum UIState<T> {
    case Loading
    case Success(T)
    case Failure(T)
}

protocol ServiceStateDelegate: class {
    var state: UIState<Any> { get set }
}

protocol ServiceStateHandler: class {
    var delegate: ServiceStateDelegate? { get set }
}



