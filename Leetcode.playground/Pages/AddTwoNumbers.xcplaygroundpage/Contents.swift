import UIKit

var str = "Hello, playground"
print(str)

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let p = l1 else { return nil }
        guard let q = l2 else { return nil }
        
        var result = ListNode(0)
        var carry = 0
        while p != nil || q != nil {
            let i = p.next != nil ? p.val : 0
            let j = p.next != nil ? p.val : 0
            let sum : Int = i+j + carry
            carry = sum / 10
            result.next = ListNode(sum%10)
            result = result.next
            
            if p != nil {
                p = p.next
            }
            
            if q != nil {
                q = q.next
            }
        }
        
        if carry > 0 {
            result.next = ListNode(carry)
        }
        
        return result
    }
}
