//
//  LinkedListCycle2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/15.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class LinkedListCycle2: NSObject {
    static func betterSolution(_ head: ListNode?) -> Bool {
        var set = Set<ObjectIdentifier>()
        var current = head
        while current != nil {
            if set.contains(ObjectIdentifier(current!)) {
                return true
            }
            
            set.insert(ObjectIdentifier(current!))
            current = current?.next
        }
        
        return false
    }
    
    static func bestSolution(_ head: ListNode?) -> Bool {
        var slow = head, fast = head?.next
        while slow != nil, fast != nil {
            if ObjectIdentifier(slow!) == ObjectIdentifier(fast!) {
                return true
            }
            
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return false
    }
    
    
}
