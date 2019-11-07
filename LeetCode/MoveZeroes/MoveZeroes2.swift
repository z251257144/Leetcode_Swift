//
//  MoveZeroes2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MoveZeroes2: NSObject {
    static func betterSolution(_ nums: inout [Int]) {
        var zeroIndex = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                if i != zeroIndex {
                    nums[zeroIndex] = nums[i]
                    nums[i] = 0
                }
                zeroIndex += 1
            }
        }
    }
}
