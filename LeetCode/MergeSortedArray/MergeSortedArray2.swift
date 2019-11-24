//
//  MergeSortedArray2.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/23.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MergeSortedArray2: NSObject {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i = m-1, j = n-1, k = m + n - 1
        while i >= 0, j >= 0 {
            if nums1[i] > nums2[j] {
                nums1[k] = nums1[i]
                i -= 1
            }
            else {
                nums1[k] = nums2[j]
                j -= 1
            }
            k -= 1
        }
        
        while j >= 0 {
            nums1[j] = nums2[j]
            j -= 1
        }
    }
}
