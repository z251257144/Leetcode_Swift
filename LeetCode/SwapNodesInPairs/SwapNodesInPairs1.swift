//
//  SwapNodesInPairs1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/12.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class SwapNodesInPairs1: NSObject {
    static func betterSolution(_ head: ListNode?) -> ListNode? {
        let result = ListNode(0)
        result.next = head
        
        var current: ListNode? = result
        while let start = current?.next,  let end = current?.next?.next {
            current?.next = end
            start.next = end.next
            end.next = start
            current = start
        }

        return result.next
    }
    
    static func bestSolution(_ head: ListNode?) -> ListNode?  {

        guard let next = head?.next else {
            return head
        }

        head?.next = self.bestSolution(next.next)
        next.next = head

        return next
    }
}
