//
//  ReverseLinkedList2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/13.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ReverseLinkedList2: NSObject {
    static func betterSolution(_ head: ListNode?) -> ListNode? {
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
        
        let ln = self.bestSolution(next)
        next.next = head
        head?.next = nil
        
        return ln
    }
}
