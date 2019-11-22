//
//  PlusOne1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/22.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class PlusOne1: NSObject {
    func plusOne(_ digits: [Int]) -> [Int] {
        var tempDigits = digits
        for i in (0..<digits.count).reversed() {
            tempDigits[i] = (digits[i] + 1) % 10
            if tempDigits[i] != 0 {
                return tempDigits
            }
        }
        
        tempDigits.insert(1, at: 0)
        return tempDigits
    }
}
