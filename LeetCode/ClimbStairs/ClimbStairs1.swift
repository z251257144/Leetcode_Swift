//
//  ClimbStairs1.swift
//  LeetCode
//
//  Created by zhoumin on 2019/11/7.
//  Copyright © 2019 ZhouMin. All rights reserved.
//

import Cocoa

class ClimbStairs1: NSObject {
    static var count = 0
    static func violentSolution(_ n: Int) -> Int {
        count += 1
        print("\(n) violentSolution:\(count)")
        
        if n <= 2 {
            return n
        }
        return self.violentSolution(n-1) + self.violentSolution(n-2)
    }
    
    static var buffer = [Int: Int]()
    static func betterSolution(_ n: Int) -> Int {
        if let value = buffer[n] {
            return value
        }
        
        if n <= 2 {
            return n
        }
        
        let value = self.betterSolution(n-1) + self.betterSolution(n-2)
        buffer[n] = value
        
        return value
    }
    
    static func besetSolution(_ n: Int) -> Int {
        if n <= 3 {
            return n<0 ? 0: n
        }
        
        var f1 = 1, f2 = 2, f3 = 0
        
        for _ in 3...n {
            f3 = f1 + f2
            
            f1 = f2
            f2 = f3
        }
        
        return f3
    }
}
