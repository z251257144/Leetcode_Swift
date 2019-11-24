//
//  MergeTwoSortedListNodes2.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/23.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MergeTwoSortedListNodes2: NSObject {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let result: ListNode? = ListNode(0)
        var cur1 = l1, cur2 = l2, cur = result
        while cur1 != nil, cur2 != nil {
            if cur1!.val < cur2!.val {
                cur?.next = cur1
                cur1 = cur1?.next
            }
            else {
                cur?.next = cur2
                cur2 = cur2?.next
            }
            cur = cur?.next
        }
        
        if cur1 != nil {
            cur?.next = cur1
        }
        
        if cur2 != nil {
            cur?.next = cur2
        }
        
        return result?.next
    }
    
    
    func bestSolution(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let `l1` = l1 else { return l2 }
        guard let `l2` = l2 else { return l1 }
        
        if l1.val < l2.val {
            l1.next = self.bestSolution(l1.next, l2)
            return l1
        }
        l2.next = self.bestSolution(l1, l2.next)
        return l2
    }
    
    
}
