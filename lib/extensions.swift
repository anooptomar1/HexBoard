//
//  extensions.swift
//  HexBoard
//
//  Created by Lance Ivy on 7/7/14.
//  Copyright (c) 2014 Lance Ivy. All rights reserved.
//

import Foundation
import UIKit

let pi = 3.14159 // TODO: where is this supposed to come from?

extension Int {
    func times(fn: () -> ()) {
        for i in 0..<self {
            fn()
        }
    }

    // TODO: surely this can be easier
    func times() -> [Int] {
        var arr = [Int]()
        for i in 0..<self {
            arr += i
        }
        return arr
    }
}

extension Double {
    func times() -> [Int] {
        return Int(self).times()
    }
}

func unique<T: Hashable>(array: [T]) -> [T] {
    var set = [T: Bool]()
    for i in array { set[i] = true }
    return Array(set.keys)
}

extension CGPoint: Hashable {
    var hashValue: Int {
        return Int(x) + Int(y)
    }
}

extension CGPoint {
    func distanceTo(other: CGPoint) -> CGFloat {
        return sqrt(pow(x - other.x, 2) + pow(y - other.y, 2))
    }
}

extension Array {
    func any(decider: (T) -> Bool) -> Bool {
        for i in self {
            if decider(i) {
                return true
            }
        }
        return false
    }
}
