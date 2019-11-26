//
//  ValidParenthesesTest.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/26.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ValidParenthesesTest: NSObject {
    override init() {
        let string = "{[]}"
        print(ValidParentheses1().isValid(string))
    }
}
