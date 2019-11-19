//
//  RemoveDuplicatesFromSortedArray2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/19.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class RemoveDuplicatesFromSortedArray2: NSObject {
    static func removeDuplicates(_ nums: inout [Int]) -> Int {
        let count = nums.count
        if count <= 1 {
            return count
        }
        
        var i = 0
        for j in 1..<count {
            if nums[i] != nums[j] {
                i += 1
                nums[i] = nums[j]
            }
        }
        
        nums.removeSubrange(i+1..<count)
        
        return i+1
    }
}
