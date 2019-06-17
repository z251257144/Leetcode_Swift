import UIKit

var str = "Hello, playground"
print(str)

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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var p = l1, q = l2
        let result = ListNode(0)
        var currentNode : ListNode = result
        var carry = 0
        var sum = 0
        
        while p != nil || q != nil {
            sum = (p?.val ?? 0) + (q?.val ?? 0) + carry
            carry = sum / 10
            currentNode.next = ListNode(sum%10)
            currentNode = currentNode.next!
            
            p = p?.next
            q = q?.next
        }
        
        if carry > 0 {
            currentNode.next = ListNode(carry)
        }
        
        return result.next
    }
}

let l1 = ListNode(3)
l1.next = ListNode(4)
//l1.next?.next = ListNode(7)
print(l1)

let l2 = ListNode(1)
l2.next = ListNode(7)
l2.next?.next = ListNode(9)
print(l2)

let l3 = Solution().addTwoNumbers(l1, l2)
print(l3!)


