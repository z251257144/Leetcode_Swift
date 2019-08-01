//: [Previous](@previous)

/**
 反转一个单链表。
 
 示例:
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 
 */

import Foundation

public class ListNode : CustomStringConvertible {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public var description: String {
        var string = "\(self.val)"
        
        var next = self.next
        while next != nil {
            string += "->"
            string += "\(next!.val)"
            next = next?.next
        }
        
        return string
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var current = head
        var prev : ListNode?
        
        while current != nil {
            var next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        return prev
    }
}

let l1 = ListNode(3)
l1.next = ListNode(4)
l1.next?.next = ListNode(7)
l1.next?.next?.next = ListNode(8)
l1.next?.next?.next?.next = ListNode(9)
print(l1)


let l2 = Solution().reverseList(l1)
print(l2)




//: [Next](@next)
