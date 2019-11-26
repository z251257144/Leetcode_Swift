//
//  MinStack1.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/26.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class MinStack1: NSObject {
    var data = Stack<Int>()
    var helper = Stack<Int>()
    
    /** initialize your data structure here. */
    override init() {
        
    }
    
    func push(_ x: Int) {
        data.push(x)
        if helper.isEmpty || x <= helper.peek()! {
            helper.push(x)
        }
    }
    
    func pop() {
        guard let item = data.pop() else {
            return
        }
        
        if helper.isEmpty || item == helper.peek()! {
            helper.pop()
        }
    }
    
    func top() -> Int {
        if data.isEmpty {
            return 0
        }
        
        return data.peek()!
    }
    
    func getMin() -> Int {
        if helper.isEmpty {
            return 0
        }
        
        return helper.peek()!
    }
}
