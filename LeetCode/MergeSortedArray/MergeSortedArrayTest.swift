
//
//  MergeSortedArrayTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/21.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MergeSortedArrayTest: NSObject {
    override init() {
        var nums1 = [1,2,3,0,0,0], m = 3
        var nums2 = [2,5,6],       n = 3
        MergeSortedArray2().merge(&nums1, m, nums2, n)
        print(nums1)
    }
}
