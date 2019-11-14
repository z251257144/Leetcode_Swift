//
//  ThreeSum1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/8.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ThreeSum1: NSObject {
    static func violentSolution(_ nums: [Int]) -> [[Int]] {
        var result = Set<[Int]>()
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                for k in j+1..<nums.count {
                    if nums[i] + nums[j] + nums[k] == 0 {
                        var temp = [Int]()
                        temp.append(nums[i])
                        temp.append(nums[j])
                        temp.append(nums[k])
                        result.insert(temp.sorted())
                    }
                }
            }
        }
        return Array(result)
    }
    
    static func betterSolution(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        
        var dict = [Int: [Int]]()
        var result = Set<[Int]>()
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if let value = dict[nums[j]] {
                    var temp = Array(value)
                    temp.append(nums[j])
                    result.insert(temp.sorted())
                }
                else {
                    dict[0-nums[i]-nums[j]] = [nums[i], nums[j]]
                }
            }
            dict.removeAll()
        }
        return Array(result)
    }
    
    static func bestSolution(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        
        let sortNums = nums.sorted()
        
        var result = Set<[Int]>()
        for i in 0..<sortNums.count {
            if sortNums[i] > 0 {
                break
            }
            
            if i > 0, sortNums[i] == sortNums[i-1] {
                continue
            }
            
            var left = i+1, right = sortNums.count-1
            while left < right {
                let temp = sortNums[i] + sortNums[left] + sortNums[right]
                if temp == 0 {
                    result.insert([sortNums[i] , sortNums[left] , sortNums[right]])
                    while left < right ,sortNums[left] == sortNums[left+1] {
                        left += 1
                    }
                    while left < right, sortNums[right] == sortNums[right-1] {
                        right -= 1
                    }
                    right -= 1
                    left += 1
                }
                else if temp > 0 {
                    right -= 1
                }
                else if temp < 0 {
                    left += 1
                }
            }
        }
        return Array(result)
    }
}
