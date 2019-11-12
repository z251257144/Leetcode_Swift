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
        var result: ListNode?, current = head, next = head?.next
        if next == nil {
            return head
        }
        else {
            result = next
        }
        
        while current != nil , next != nil {
            let temp = next?.next
            next?.next = current
            current?.next = temp?.next == nil ? temp : temp?.next

            current = temp
            next = temp?.next
        }

        
        return result
    }
    
    static func bestSolution(_ head: ListNode?) -> ListNode?  {
//        let result = ListNode(0)
//        result.next = head
//        var current: ListNode? = result
//        while let start = current?.next,  let end = current?.next?.next {
//            current?.next = end
//            start.next = end.next
//            end.next = start
//            current = start
//        }
//
//        return result.next
        guard let l1 = head?.next else {
            return head
        }

        head?.next = self.bestSolution(l1.next)
        l1.next = head

        return l1
    }
}
