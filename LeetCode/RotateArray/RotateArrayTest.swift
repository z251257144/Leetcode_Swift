//
//  RotateArrayTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/20.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

/*
 给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。

 示例
 输入: [1,2,3,4,5,6,7] 和 k = 3
 输出: [5,6,7,1,2,3,4]
 
 说明:

 尽可能想出更多的解决方案，至少有三种不同的方法可以解决这个问题。
 要求使用空间复杂度为 O(1) 的 原地 算法。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/rotate-array
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Cocoa

class RotateArrayTest: NSObject {
    override init() {
        var array = [1,2,3,4,5,6, 7]
        RotateArray2().bestSolution(&array, 10)
        print(array)
    }
}
