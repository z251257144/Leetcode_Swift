import Foundation

/**
 反转一个单链表。
 
 示例:
 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
 
 */
public func reverseList(_ head: ListNode?) -> ListNode? {
    
    var current = head
    var prev : ListNode?
    var next : ListNode?
    
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    
    return prev
}
