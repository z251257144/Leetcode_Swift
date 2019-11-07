//
//  ClimbStairs1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ClimbStairs1: NSObject {
    static func violentSolution(_ n: Int) -> Int {
        if n == 0 || n == 1 {
            return n
        }
        return self.violentSolution(n-1) + self.violentSolution(n-1)
    }
}
