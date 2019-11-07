//
//  ContainerWithMostWaterTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ContainerWithMostWaterTest: NSObject {
    @discardableResult override init() {
        let heights = [1,8,6,2,5,4,8,3,7]
        print("暴力解法：\(ContainerWithMostWater1.violentSolution(heights))")
        print("最优解法：\(ContainerWithMostWater1.bestSolution(heights))")
        
        print("暴力解法：\(ContainerWithMostWater2.violentSolution(heights))")
        print("最优解法：\(ContainerWithMostWater2.bestSolution(heights))")
    }
}
