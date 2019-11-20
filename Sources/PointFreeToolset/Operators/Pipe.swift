//
//  Operator.swift
//  PointFreeToolset
//
//  Created by Soledad on 2019/9/8.
//  Copyright © 2019 Soledad. All rights reserved.
//

import Foundation

precedencegroup ForwardApplication {
  associativity: left
}

infix operator |>: ForwardApplication

public func |> <A, B>(a: A, f: (A) -> B) -> B {
  return f(a)
}

