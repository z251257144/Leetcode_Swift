import Foundation


public class TwoSum1: NSObject {

    /// 暴力解法
    public static func violentSolution(_ nums: [Int], target: Int) -> [Int] {
        var result = [Int]()
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] + nums[j] == target {
                    result.append(i)
                    result.append(j)
                }
            }
        }
        return result
    }
    
    /// 优化解法
    public static func betterSolution(_ nums: [Int], target: Int) -> [Int] {
        var dict = [Int : Int]()
        
        for (index, value) in nums.enumerated() {
            dict[value] = index
        }
        
        var result = [Int]()
        for i in 0..<nums.count {
            if let index = dict[target-nums[i]], i != index {
                result.append(i)
                result.append(index)
                break
            }
        }
        return result
    }
    
    /// 最优解法
    public static func bestSolution(_ nums: [Int], target: Int) -> [Int] {
        var result = [Int]()
        
        var dict = [Int: Int]()
        for (index, value) in nums.enumerated() {
            if let i = dict[value] {
                result.append(i)
                result.append(index)
                break
            }
            dict[target-value] = index
        }
        
        return result
    }
}


