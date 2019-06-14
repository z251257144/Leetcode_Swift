//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let nums = [2, 7, 11, 15]

//: 这暴力解法，性能最差，时间复杂度：n^2
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result:[Int] = []
    
    for (i, iValue) in nums.enumerated() {
        for (_, jValueJ) in nums.enumerated() {
            if iValue+jValueJ == target {
                result.append(i);
            }
        }
    }
    
    return result
}

let result = twoSum(nums, 18)
print("暴力解法结果：")
print(result)


//: 优化解法，时间复杂度：n*2
func twoSumBetter(_ nums: [Int], _ target: Int) -> [Int] {
    var result:[Int] = []
    
    var dict = [Int: Int]()
    for (index, value) in nums.enumerated() {
        dict[value] = index
    }

    for (index, value) in nums.enumerated() {
        let temp = target - value
        if let i = dict[temp] {
            result.append(index);
            result.append(i);
            break
        }
    }

    return result
}

let resultBetter = twoSumBetter(nums, 18)
print("优化解法结果：")
print(resultBetter)


//: 最优解法，时间复杂度：n
func twoSumBest(_ nums: [Int], _ target: Int) -> [Int] {
    var result:[Int] = []

    var dict = [Int: Int]()
    
    for (index, value) in nums.enumerated() {
        let temp = target - value
        if let i = dict[temp] {
            result.append(i);
            result.append(index);
            break
        }
        
        dict[value] = index
    }

    return result
}
let resultBest = twoSumBest(nums, 18)
print("最优解法结果：")
print(resultBetter)

