//
//  MoveZeroes1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MoveZeroes1: NSObject {
    public static func betterSolution(_ nums: inout [Int]) {
        var firstZeroIndex = 0
        for (index, value) in nums.enumerated() {
            if value != 0 {
                if index != firstZeroIndex {
                    nums[firstZeroIndex] = value
                }
                firstZeroIndex += 1
            }
        }
        
        for i in firstZeroIndex..<nums.count {
            nums[i] = 0
        }
    }
    
    public static func bestSolution(_ nums: inout [Int]) {
        var firstZeroIndex = 0
        for (index, value) in nums.enumerated() {
            if value != 0 {
                nums[index] = nums[firstZeroIndex]
                nums[firstZeroIndex] = value
                firstZeroIndex += 1
            }
        }
    }
}
