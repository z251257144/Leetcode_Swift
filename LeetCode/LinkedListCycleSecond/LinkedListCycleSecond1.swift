//
//  LinkedListCycleSecond1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/15.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class LinkedListCycleSecond1: NSObject {
    static func betterSolution(_ head: ListNode?) -> ListNode? {
        var set = Set<ObjectIdentifier>()
        var current = head
        while current != nil {
            let identitifier = ObjectIdentifier(current!)
            if set.contains(identitifier) {
                return current
            }
            
            set.insert(identitifier)
            current = current?.next
        }
        
        return nil
    }
    
    static func getIntersect(_ head: ListNode?) -> ListNode?  {
        var slow = head, fast = head
        while let nextSlow = slow?.next, let nextFast = fast?.next?.next {
            if ObjectIdentifier(nextSlow) == ObjectIdentifier(nextFast) {
                return nextSlow
            }
            slow = nextSlow
            fast = nextFast
        }
        return nil
    }
    
    static func bestSolution(_ head: ListNode?) -> ListNode?  {
        guard let intersect = self.getIntersect(head)  else {
            return nil
        }
        
        var start = head, end: ListNode? = intersect
        while ObjectIdentifier(start!) != ObjectIdentifier(end!) {
            start = start?.next
            end = end?.next
        }

        return start
    }
}
