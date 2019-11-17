
//
//  ReverseNodesInKGroupTest.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/17.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ReverseNodesInKGroupTest: NSObject {
    override init() {
        let l1 = ListNode(1)
        var next = l1
        for i in 2...20 {
            next.next = ListNode(i)
            next = next.next!
        }
          
        print("链表内容：\(l1.description)")
        
        print("优化解法：\(ReverseNodesInKGroup1.reverseKGroup(l1, 3))")
    }
}
