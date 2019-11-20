//
//  Diamond.swift
//  PointFreeToolset
//
//  Created by Soledad on 2019/9/10.
//  Copyright © 2019 Soledad. All rights reserved.
//

import Foundation

precedencegroup SingleTypeComposition {
    associativity: left
    higherThan: ForwardApplication
}

infix operator <>: SingleTypeComposition

func <> <A>(f: @escaping (A) -> A, g: @escaping (A) -> A) -> ((A) -> A) {
    return f >>> g
}


