//
//  ReverseNodesInKGroup2.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/19.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ReverseNodesInKGroup2: NSObject {
    
    /// 获取结束节点
    /// - Parameters:
    ///   - start: 开始节点
    ///   - k: 位置
    static func endListNode(_ start: ListNode?, _ k: Int) -> ListNode? {
        var end = start
        for _ in 0..<k {
            end = end?.next
            if end == nil { break }
        }
        return end
    }
    
    /// 反转链表
    /// - Parameter head: 链表头
    static func reverseListNode(_ head: ListNode?) -> ListNode? {
        guard let next = head?.next else {
            return head
        }
        
        let result = self.reverseListNode(next)
        next.next = head
        head?.next = nil
        
        return result
    }
    
    static func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        let result: ListNode? = ListNode(0)
        result?.next = head
        
        var current = result
        while let start = current?.next, let end = self.endListNode(current, k) {
            let right = end.next
            end.next = nil
            
            current?.next = self.reverseListNode(start)
            start.next = right
            current = start
        }
        
        return result?.next
    }
}
