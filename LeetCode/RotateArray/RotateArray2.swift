//
//  RotateArray2.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/23.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class RotateArray2: NSObject {
    func violentSolution(_ nums: inout [Int], _ k: Int) {
        if nums.count <= 1 || k <= 0 {
            return
        }
        
        var temp = 0, pre = 0
        for _ in 0..<k {
            pre = nums.last!
            for i in 0..<nums.count {
                temp = nums[i]
                nums[i] = pre
                pre = temp
            }
        }
    }
    
    func betterSolution(_ nums: inout [Int], _ k: Int) {
        if nums.count <= 1 || k <= 0 {
            return
        }
        
        let `k` = k % nums.count
        self.reversedArray(&nums, 0, nums.count-1)
        self.reversedArray(&nums, 0, k-1)
        self.reversedArray(&nums, k, nums.count-1)
        
    }
    
    func reversedArray(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var `start` = start, `end` = end, temp = 0
        while start < end {
            temp = nums[start]
            nums[start] = nums[end]
            nums[end] = temp
            start += 1
            end -= 1
        }
    }
    
    func bestSolution(_ nums: inout [Int], _ k: Int) {
        let count = nums.count
        if count <= 1 {
            return
        }
        
        let `k` = k % count
        if k <= 0 {
            return
        }
        
        var start = 0, next = start, nextValue = nums[next], temp = 0
        for _ in 0..<count {
            
            next = (next+k) % count
            temp = nums[next]
            nums[next] = nextValue
            nextValue = temp
            
            if next == start {
                start += 1
                next = start
                nextValue = nums[next]
            }
        }
        
    }
}
