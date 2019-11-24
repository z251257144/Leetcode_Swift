//
//  MergeTwoSortedListNodesTest.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/21.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

/*
 将两个有序链表合并为一个新的有序链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

 示例：

 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/merge-two-sorted-lists
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Cocoa

class MergeTwoSortedListNodesTest: NSObject {
    override init() {
        let l1 = ListNode(1)
        l1.next = ListNode(2)
        l1.next?.next = ListNode(3)
        l1.next?.next?.next = ListNode(5)
        
        let l2 = ListNode(1)
        l2.next = ListNode(4)
        l2.next?.next = ListNode(6)
        
        print(MergeTwoSortedListNodes2().bestSolution(l1, l2)?.fullDescription)
    }
}
