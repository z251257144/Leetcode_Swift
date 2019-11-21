//
//  RotateArray1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/20.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class RotateArray1: NSObject {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if nums.count == 0 {
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
        let count = nums.count
        var array = Array<Int>(repeating: 0, count: count)
        print(array.count)
        for i in 0..<count {
            array[(i+k)%count] = nums[i]
        }
        print(array)
        for i in 0..<count {
            nums[i] = array[i]
        }
    }
    
    func bestSolution(_ nums: inout [Int], _ k: Int) {
        let count = nums.count
        if count <= 1 {
            return
        }

        let smallK = k % count
        if smallK <= 0 {
            return
        }
        
        var start = 0, next = start, nextNewValue = nums[(next + count - smallK) % count]
        for _ in 0..<count {
            let temp = nums[next]
            nums[next] = nextNewValue
            
            next = (next + smallK) % count
            nextNewValue = temp
            
            if start == next {
                start += 1
                next = start
                nextNewValue = nums[(next + count - smallK ) % count]
            }
        }
    }
}
