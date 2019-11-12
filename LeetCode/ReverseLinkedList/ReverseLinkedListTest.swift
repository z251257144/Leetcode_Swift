//
//  ReverseLinkedListTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/12.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

/*
 
 */
import Cocoa

public class ListNode: CustomStringConvertible {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public var description: String {
        var string = "\(val)"
        var next = self.next
        while next != nil {
            string += " -> \(next!.val)"
            next = next?.next
        }
        return string
    }
}

class ReverseLinkedListTest: NSObject {
    override init() {
        let l1 = ListNode(3)
        l1.next = ListNode(4)
        l1.next?.next = ListNode(7)
        l1.next?.next?.next = ListNode(8)
        l1.next?.next?.next?.next = ListNode(9)
        print(l1)
        
        let resut = ReverseLinkedList1.betterSolution(l1)
        print("优化解法：\(resut)")
        print("最优解法：\(ReverseLinkedList1.bestSolution(resut))")
    }
}
