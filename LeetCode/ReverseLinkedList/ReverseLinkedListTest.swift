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
        return "\(val)"
    }
    
    public var fullDescription: String {
        var string = "\(val)"
        var next = self.next
        while next != nil {
            string += " -> \(next!.val)"
            next = next?.next
        }
        return string
    }
}
/*
 反转一个单链表。

 示例:

 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 进阶:
 你可以迭代或递归地反转链表。你能否用两种方法解决这道题？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-linked-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class ReverseLinkedListTest: NSObject {
    override init() {
        let l1 = ListNode(1)
        l1.next = ListNode(2)
        l1.next?.next = ListNode(3)
        l1.next?.next?.next = ListNode(4)
        l1.next?.next?.next?.next = ListNode(5)
        print(l1)
        
        let resut = ReverseLinkedList2.betterSolution(l1)
        print("优化解法：\(resut)")
        print("最优解法：\(ReverseLinkedList2.bestSolution(resut))")
    }
}
