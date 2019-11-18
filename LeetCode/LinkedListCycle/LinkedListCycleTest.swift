//
//  LinkedListCycleTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/14.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

/*
 给定一个链表，判断链表中是否有环。

 为了表示给定链表中的环，我们使用整数 pos 来表示链表尾连接到链表中的位置（索引从 0 开始）。 如果 pos 是 -1，则在该链表中没有环。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/linked-list-cycle
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Cocoa

class LinkedListCycleTest: NSObject {
    override init() {
        let l1 = ListNode(1)
        let l2 = ListNode(2)
        l1.next = l2
        l1.next?.next = ListNode(3)
        l1.next?.next?.next = ListNode(4)
        let l5 = ListNode(5)
        l1.next?.next?.next?.next = l5
        l2.next = l1
//        print(l1)
        
        print("优化解法：\(LinkedListCycle2.bestSolution(l1))")
    }
}
