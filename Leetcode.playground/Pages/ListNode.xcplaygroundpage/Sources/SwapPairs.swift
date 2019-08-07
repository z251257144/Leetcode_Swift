import Foundation

/**
 给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。
 
 你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。
 
   
 
 示例:
 
 给定 1->2->3->4, 你应该返回 2->1->4->3.
 */

public func swapPairs(_ head: ListNode?) -> ListNode? {
    
    var prev : ListNode?
    var current : ListNode? = head
    var next : ListNode? = current?.next
    
    let result : ListNode? = next != nil ? next : current
    
    while next != nil && current != nil {
        current?.next = next?.next
        next?.next = current
        prev?.next = next
        
        prev = current
        current = current?.next
        next = current?.next
    }
    
    return result
}
