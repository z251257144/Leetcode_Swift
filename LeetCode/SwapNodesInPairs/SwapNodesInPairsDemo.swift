//
//  SwapNodesInPairsDemo.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/12.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

/*
 给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。

 你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。

  

 示例:

 给定 1->2->3->4, 你应该返回 2->1->4->3.

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/swap-nodes-in-pairs
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Cocoa

class SwapNodesInPairsDemo: NSObject {
    override init() {
        let l1 = ListNode(3)
        l1.next = ListNode(4)
        l1.next?.next = ListNode(7)
        l1.next?.next?.next = ListNode(8)
        l1.next?.next?.next?.next = ListNode(9)
        print(l1)
        
        print("优化解法：\(SwapNodesInPairs2.bestSolution(l1))")
    }
}
