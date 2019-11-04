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
