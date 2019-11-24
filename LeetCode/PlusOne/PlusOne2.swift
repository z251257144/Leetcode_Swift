//
//  PlusOne2.swift
//  LeetCode
//
//  Created by ZhouMin on 2019/11/23.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class PlusOne2: NSObject {
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.isEmpty {
            return digits
        }
        
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
