//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let l1 = ListNode(3)
l1.next = ListNode(4)
l1.next?.next = ListNode(7)
l1.next?.next?.next = ListNode(8)
l1.next?.next?.next?.next = ListNode(9)
print(l1)

//
let l2 = reverseList(l1)
print(l2)



//: [Next](@next)
