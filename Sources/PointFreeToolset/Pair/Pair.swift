//
//  Pair.swift
//  PointFreeToolset
//
//  Created by Soledad on 2019/9/15.
//  Copyright © 2019 Soledad. All rights reserved.
//

import Foundation

func first<A, B, C>(f: @escaping (A) -> C) -> ((A, B)) -> (C, B) {
    return { pair in
        (f(pair.0), pair.1)
    }
}

func second<A, B, C>(_ f: @escaping (B) -> C) -> ((A, B)) -> (A, C) {
    return { pair in
        return (pair.0, f(pair.1))
    }
}
