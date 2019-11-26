//
//  Queue.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/26.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

struct Queue<Element> : CustomStringConvertible {
    fileprivate var elementArray = [Element]()
    
    var isEmpty : Bool {
        return elementArray.isEmpty
    }
    
    mutating func add(_ item: Element) {
        elementArray.append(item)
    }
    
    mutating func poll() {
        if self.isEmpty {
            return
        }
        
        elementArray.removeFirst()
    }
    
    mutating func peek() -> Element? {
        return elementArray.first
    }
    
    var description: String {
        return "-----Queue---\n" + self.elementArray.description + "\n"
    }
}
