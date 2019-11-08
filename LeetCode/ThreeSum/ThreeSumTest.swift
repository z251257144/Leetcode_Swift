//
//  ThreeSumTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/8.
//  Copyright © 2019 ZhouMin. All rights reserved.
//


/*
 给定一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？找出所有满足条件且不重复的三元组。

 注意：答案中不可以包含重复的三元组。

 例如, 给定数组 nums = [-1, 0, 1, 2, -1, -4]，

 满足要求的三元组集合为：
 [
   [-1, 0, 1],
   [-1, -1, 2]
 ]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/3sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Cocoa

class ThreeSumTest: NSObject {
    @discardableResult override init() {
        let nums = [-1, 0, 1, 2, -1, -4]
        print("暴力算法：\(ThreeSum1.violentSolution(nums))")
        print("优化算法：\(ThreeSum1.betterSolution(nums))")
        print("最优算法：\(ThreeSum1.bestSolution([1,0,-1]))")
        
        
    }
}
