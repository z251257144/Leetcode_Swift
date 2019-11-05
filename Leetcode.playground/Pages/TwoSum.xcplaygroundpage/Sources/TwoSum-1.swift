import Foundation


public class TwoSum1: NSObject {

    /// 暴力解法
    public static func violentSolution(_ nums: [Int], target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
        return []
    }
    
    /// 优化解法
    public static func betterSolution(_ nums: [Int], target: Int) -> [Int] {
        var dict = [Int : Int]()
        for (index, value) in nums.enumerated() {
            dict[value] = index
        }
        
        for (index, value) in nums.enumerated() {
            if let lastIndex = dict[target-value], index != lastIndex {
                return [index, lastIndex]
            }
        }
        
        return []
    }
    
    /// 最优解法
    public static func bestSolution(_ nums: [Int], target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, value) in nums.enumerated() {
            if let firstIndex = dict[target-value] {
                return [firstIndex, index]
            }
            dict[value] = index
        }
        
        return []
    }
}


