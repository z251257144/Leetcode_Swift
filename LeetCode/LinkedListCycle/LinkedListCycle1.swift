//
//  LinkedListCycle1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/14.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class LinkedListCycle1: NSObject {
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
    
    static func bestSolution(_ head: ListNode?) -> Bool  {
        var slow = head, fast = head?.next
        while let tempSlow = slow, let tempfast = fast {
            if ObjectIdentifier(tempSlow) == ObjectIdentifier(tempfast) {
                return true
            }
            
            slow = tempSlow.next
            fast = tempfast.next?.next
        }
        
        return false
    }
}
