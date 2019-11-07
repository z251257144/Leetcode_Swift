//
//  ContainerWithMostWater2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ContainerWithMostWater2: NSObject {
    static func violentSolution(_ heights: [Int]) -> Int {
        var maxArea = 0
        for i in 0..<heights.count {
            for j in i+1..<heights.count {
                maxArea = max(maxArea, min(heights[i], heights[j]) * (j-i))
            }
        }
        
        return maxArea
    }
    
    static func bestSolution(_ heights: [Int]) -> Int {
        var maxArea = 0
        var left = 0, right = heights.count-1
        while left < right {
            maxArea = max(maxArea, min(heights[left], heights[right]) * (right-left))
            
            if heights[left] < heights[right] {
                left += 1
            }
            else {
                right -= 1
            }
        }
        
        return maxArea
    }
}
