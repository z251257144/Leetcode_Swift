//
//  MergeSortedArray1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/21.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MergeSortedArray1: NSObject {
    
    /// 时间复杂度：（m+n）* log(m+n)
    func violentSolution(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1.replaceSubrange(m..<m+n, with: nums2)
        nums1.sort()
    }
    
    /// 时间复杂度：m+n, 空间复杂度：O(m)
    func betterSolution(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var newNums1 = Array(nums1)
        newNums1.removeSubrange(m..<nums1.count)
        print(newNums1)
        
        var p1 = 0, p2 = 0, k = 0
        while p1 < m , p2 < n {
            if newNums1[p1] < nums2[p2] {
                nums1[k] = newNums1[p1]
                p1 += 1
            }
            else {
                nums1[k] = nums2[p2]
                p2 += 1
            }
            
            k += 1
        }
        
        if p1 < m {
            for i in p1..<m {
                nums1[k] = newNums1[i]
                k += 1
            }
        }
        
        if p2 < n {
            for i in p2..<n {
                nums1[k] = nums2[i]
                k += 1
            }
        }
    }
    
    /// 时间复杂度：m+n, 空间复杂度：O(1)
    func bestSolution(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var p1 = m-1, p2 = n-1, k = m + n - 1
        
        while p1 >= 0 , p2 >= 0 {
            if nums1[p1] > nums2[p2] {
                nums1[k] = nums1[p1]
                p1 -= 1
            }
            else {
                nums1[k] = nums2[p2]
                p2 -= 1
            }
            k -= 1
        }
        
        while p2 >= 0 {
            nums1[p2] = nums2[p2]
            p2 -= 1
        }
    }
}
