//
//  Flip.swift
//  PointFreeToolset
//
//  Created by Soledad on 2019/9/14.
//  Copyright © 2019 Soledad. All rights reserved.
//

import Foundation

func flip<A, B, C>(_ f: @escaping (A) -> (B) -> (C)) -> (B) -> (A) -> (C) {
    return { b in { a in f(a)(b) } }
}
