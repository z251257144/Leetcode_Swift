//: [Previous](@previous)

import Foundation



//反转一个单链表
let l1 = ListNode(3)
l1.next = ListNode(4)
l1.next?.next = ListNode(7)
l1.next?.next?.next = ListNode(8)
l1.next?.next?.next?.next = ListNode(9)
print(l1)

let l2 = reverseList(l1)
print("反转一个单链表")
print(l2)

//给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。
let l3 = ListNode(3)
l3.next = ListNode(4)
l3.next?.next = ListNode(7)
l3.next?.next?.next = ListNode(8)
l3.next?.next?.next?.next = ListNode(9)
let l4 = swapPairs(l3)
print("给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。")
print(l4)




//: [Next](@next)
