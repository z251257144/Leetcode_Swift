/**
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
 
 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
 
 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
 
 示例：
 
 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-two-numbers
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
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


