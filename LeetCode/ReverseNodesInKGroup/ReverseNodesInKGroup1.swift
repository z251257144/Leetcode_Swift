//
//  ReverseNodesInKGroup1.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/17.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ReverseNodesInKGroup1: NSObject {
    
    static func endLinkList(_ head: ListNode?, _ k: Int) -> ListNode? {
        var i = 0, end = head
        while i<k, end != nil {
            end = end?.next
            i += 1
        }
        
        return end
    }
    
    static func reverseLinkList(_ head: ListNode?) -> ListNode? {
        guard let next = head?.next else {
            return head
        }
        let ln = self.reverseLinkList(next)
        next.next = head
        head?.next = nil
        
        return ln
    }
    
    static func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil || k <= 1 {
            return head
        }
        
        let result = ListNode(0)
        result.next = head
        
        var left: ListNode? = result, right: ListNode? = result
        while let start = left?.next, let end = self.endLinkList(left, k) {
            right = end.next
            end.next = nil
            
            left?.next = self.reverseLinkList(start)
            start.next = right
            left = start
        }
        
        return result.next
    }
}
