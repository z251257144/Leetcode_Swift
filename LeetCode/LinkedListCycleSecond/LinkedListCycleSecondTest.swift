//
//  LinkedListCycleSecondTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/15.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

/*
 给定一个链表，返回链表开始入环的第一个节点。 如果链表无环，则返回 null。

 为了表示给定链表中的环，我们使用整数 pos 来表示链表尾连接到链表中的位置（索引从 0 开始）。 如果 pos 是 -1，则在该链表中没有环。

 说明：不允许修改给定的链表。

 进阶：
 你是否可以不用额外空间解决此题？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/linked-list-cycle-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */

class LinkedListCycleSecondTest: NSObject {
    override init() {
            let l1 = ListNode(1)
            let l2 = ListNode(2)
            l1.next = l2
            l1.next?.next = ListNode(3)
            l1.next?.next?.next = ListNode(4)
            let l5 = ListNode(5)
            l1.next?.next?.next?.next = l5
            l5.next = l2
            
            print("优化解法：\(LinkedListCycleSecond1.bestSolution(l1))")
        }
}
