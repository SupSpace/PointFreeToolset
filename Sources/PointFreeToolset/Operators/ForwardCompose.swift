//
//  ForwardCompose.swift
//  PointFreeToolset
//
//  Created by Soledad on 2019/9/9.
//  Copyright © 2019 Soledad. All rights reserved.
//

import Foundation

precedencegroup ForwardComposition {
    associativity: left
    higherThan: ForwardApplication
}

infix operator >>>: ForwardComposition

public func >>> <A, B, C>(f: @escaping (A) -> B, g: @escaping (B) -> C) -> ((A) -> C) {
    return { a in
        g(f(a))
    }
}
