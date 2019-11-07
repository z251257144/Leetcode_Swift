//
//  TwoSum2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class TwoSum2: NSObject {
    public static func violentSolution(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
    
    public static func bestSolution(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i in 0..<nums.count {
            if let index = dict[target-nums[i]] {
                return [index, i]
            }
            dict[nums[i]] = i
        }
        return []
    }
}
