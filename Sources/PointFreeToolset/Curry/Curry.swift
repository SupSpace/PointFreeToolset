//
//  Curry.swift
//  PointFreeToolset
//
//  Created by Soledad on 2019/9/14.
//  Copyright © 2019 Soledad. All rights reserved.
//

import Foundation

func curry<A, B, C>(_ f: @escaping (A, B) -> C) -> (A) -> (B) -> C {
    return { a in { b in f(a, b) } }
}
