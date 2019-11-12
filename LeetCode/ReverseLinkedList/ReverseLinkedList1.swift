//
//  ReverseLinkedList1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/12.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ReverseLinkedList1: NSObject {
    static func betterSolution(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        
        var pre: ListNode?, current = head
        
        while current != nil {
            let temp = current?.next
            current?.next = pre
            pre = current
            current = temp
        }
        
        return pre
    }
    
    static func bestSolution(_ head: ListNode?) -> ListNode? {
        guard let next = head?.next else {
            return head
        }
        let ln = bestSolution(next)
        next.next = head
        head!.next = nil

        return ln
    }
    

}
