//
//  LargestRectangleInHistogram1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/27.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class LargestRectangleInHistogram1: NSObject {
    
    /// 暴力解法
    /// - Parameter heights:
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var minArea = 0
        for i in 0..<heights.count {
            for j in i+1..<heights.count {
                var minHeight = heights[i]
                for minIndex in i...j {
                    minHeight = min(minHeight, heights[minIndex])
                }
                minArea = max(minArea, minHeight*(j-i+1))
            }
        }
        return minArea
    }
    
    /// 优化解法
    /// - Parameter heights:
    func betterSolution(_ heights: [Int]) -> Int {
        var minArea = 0
        for i in 0..<heights.count {
            var minHeight = heights[i]
            
            for j in i+1..<heights.count {
                minHeight = min(minHeight, heights[j])
                minArea = max(minArea, minHeight*(j-i+1))
            }
        }
        return minArea
    }
    
    func bestSolution(_ heights: [Int]) -> Int {
        
//        // 处理只有一个数据的情况
//        var heights = heights
//        heights.append(0)
//        
//        var stack: [Int] = []
//        var maxArea = 0
//        
//        for i in heights.indices {
//            // 当前高度小于上一次, 说明找到了右边界, 出栈, 计算面积
//            while !stack.isEmpty,
//                  heights[i] <= heights[stack.last!] {
//                
//                let height = heights[stack.removeLast()]
//                var span = i
//                if !stack.isEmpty {
//                    span = i - stack.last! - 1
//                }
//                
//                maxArea = max(maxArea, span * height)
//            }
//            
//            stack.append(i)
//            
//        }
//        
//        return maxArea
        
        
        var maxArea = 0
        var stack = Stack<Int>()
        stack.push(-1)
        
        for i in 0..<heights.count {
            while let val = stack.peek(), val != -1, heights[i] <= heights[val] {
                stack.pop()
                maxArea = max(maxArea, heights[val] * (i - stack.peek()! - 1))
            }
            stack.push(i)
        }
        
        while let val = stack.pop(), val != -1 {
            maxArea = max(maxArea, heights[val] * (heights.count - stack.peek()! - 1))
        }
        
        return maxArea
    }
}
