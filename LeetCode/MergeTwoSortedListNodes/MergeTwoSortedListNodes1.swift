//
//  MergeTwoSortedListNodes1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/21.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MergeTwoSortedListNodes1: NSObject {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let `l1` = l1 else {
            return l2
        }
        guard let `l2` = l2 else {
            return l1
        }
        if l1.val < l2.val {
            l1.next = self.mergeTwoLists(l1.next, l2)
            return l1
        }
        
        l2.next = self.mergeTwoLists(l1, l2.next)
        return l2
    }
    
    func betterSolution(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
        
        var cur1 = l1, cur2 = l2, pre: ListNode? = result
        while cur1 != nil, cur2 != nil {
            if cur1!.val < cur2!.val {
                pre?.next = cur1
                cur1 = cur1?.next
            }
            else {
                pre?.next = cur2
                cur2 = cur2?.next
            }
            pre = pre?.next
        }
        
        pre?.next = cur1 != nil ? cur1 : cur2
        
        return result.next
    }
}
