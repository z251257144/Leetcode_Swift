//
//  ValidParentheses1.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/26.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ValidParentheses1: NSObject {
    func isValid(_ s: String) -> Bool {
        var stack = Stack<Character>()
        let dict: [Character: Character] = ["}":"{", "]":"[", ")":"("]
        for char in s {
            if let value = dict[char] {
                if value != stack.pop() {
                    return false
                }
            }
            else {
                stack.push(char)
            }
        }
        return stack.isEmpty
    }
}
