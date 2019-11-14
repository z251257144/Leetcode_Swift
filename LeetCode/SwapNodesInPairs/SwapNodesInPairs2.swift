//
//  SwapNodesInPairs2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/14.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class SwapNodesInPairs2: NSObject {
    static func violentSolution(_ head: ListNode?) -> ListNode? {
        let result = ListNode(0)
        result.next = head
        var current = result
        while let start = current.next, let end = start.next {
            start.next = end.next
            end.next = start
            current.next = end
            current = start
        }
        
        return result.next
    }
    
    static func bestSolution(_ head: ListNode?) -> ListNode? {
        guard let next = head?.next else { return head }
        
        head?.next = self.bestSolution(next.next)
        next.next = head
        
        return next
    }
}
