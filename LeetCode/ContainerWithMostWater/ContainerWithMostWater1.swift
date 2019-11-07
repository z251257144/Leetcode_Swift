//
//  ContainerWithMostWater1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ContainerWithMostWater1: NSObject {
    /// 暴力解法
    public static func violentSolution(_ heights: [Int]) -> Int {
        var area = 0
        for i in 0..<heights.count {
            for j in i+1..<heights.count {
                area = max(area, min(heights[i], heights[j])*(j-i))
            }
        }
        
        return area
    }
    
    /// 最优解法
    public static func bestSolution(_ heights: [Int]) -> Int {
        var area = 0
        
        var left = 0
        var right = heights.count - 1
        while left < right {
            
            area = max(area, min(heights[right], heights[left]) * (right-left) )
            
            if heights[left] < heights[right] {
                left += 1
            }
            else {
                right -= 1
            }
        }
        
        return area
    }
}
