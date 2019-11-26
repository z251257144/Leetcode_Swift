//
//  Stack.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/26.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa


struct Stack<Element> : CustomStringConvertible {
    private var elementArray = [Element]()
    
    var isEmpty: Bool {
      return elementArray.isEmpty
    }
    
    mutating func push(_ item: Element) {
        elementArray.append(item)
    }
    
    @discardableResult mutating func pop() -> Element? {
        return elementArray.popLast()
    }
    
    mutating func peek() -> Element? {
        return self.elementArray.last
    }
    
    var description: String {
        let topDivider = "-----Stack---\n"
        let bottomDivider = "\n"
        let stackElements = elementArray.map({ (item) -> String in
            return "\(item)"
        }).reversed().joined(separator: "\n")
        return topDivider + stackElements + bottomDivider
    }
}
