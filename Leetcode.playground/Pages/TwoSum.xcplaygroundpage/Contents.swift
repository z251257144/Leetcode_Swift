//: [Previous](@previous)

/**
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 
 示例:
 
 给定 nums = [2, 7, 11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 所以返回 [0, 1]
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/two-sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

let nums = [2, 7, 11, 15]
print("暴力解法：\(TwoSum1.violentSolution(nums, target: 18))")
print("优化解法：\(TwoSum1.betterSolution([3,3], target: 6))")
print("最优解法：\(TwoSum1.bestSolution(nums, target: 18))")

//第二遍
print("暴力解法：\(TwoSum2.violentSolution(nums, 18))")

print("最优解法：\(TwoSum2.bestSolution(nums, 18))")




////: 这暴力解法，性能最差，时间复杂度：n^2
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var result:[Int] = []
//
//    for (i, iValue) in nums.enumerated() {
//        for (_, jValueJ) in nums.enumerated() {
//            if iValue+jValueJ == target {
//                result.append(i);
//            }
//        }
//    }
//
//    return result
//}
//
//let result = twoSum(nums, 18)
//print("暴力解法结果：")
//print(result)
//
//
////: 优化解法，时间复杂度：n*2
//func twoSumBetter(_ nums: [Int], _ target: Int) -> [Int] {
//    var result:[Int] = []
//
//    var dict = [Int: Int]()
//    for (index, value) in nums.enumerated() {
//        dict[value] = index
//    }
//
//    for (index, value) in nums.enumerated() {
//        let temp = target - value
//        if let i = dict[temp] {
//            result.append(index);
//            result.append(i);
//            break
//        }
//    }
//
//    return result
//}
//
//let resultBetter = twoSumBetter(nums, 18)
//print("优化解法结果：")
//print(resultBetter)
//
//
////: 最优解法，时间复杂度：n
//func twoSumBest(_ nums: [Int], _ target: Int) -> [Int] {
//    var result:[Int] = []
//
//    var dict = [Int: Int]()
//
//    for (index, value) in nums.enumerated() {
//        let temp = target - value
//        if let i = dict[temp] {
//            result.append(i);
//            result.append(index);
//            break
//        }
//
//        dict[value] = index
//    }
//
//    return result
//}
//let resultBest = twoSumBest(nums, 18)
//print("最优解法结果：")
//print(resultBetter)

