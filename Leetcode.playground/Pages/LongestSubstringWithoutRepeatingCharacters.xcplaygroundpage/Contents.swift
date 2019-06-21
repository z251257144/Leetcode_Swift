//: [Previous](@previous)

/**
 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
 
 示例 1:
 
 输入: "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 示例 2:
 
 输入: "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 
 示例 3:
 
 输入: "pwwkew"
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
           请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/longest-substring-without-repeating-characters
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

var str = "dvdf"

class Solution {
    
    /// 暴力解法,时间复杂度较高(n^2)
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let stringLength = s.count;
        if stringLength == 0 || stringLength == 1 {
            ///
            return stringLength;
        }
        
        var length = 0
        for (i, iVlaue) in s.enumerated() {
            var chars = [Character:Character]()
            chars[iVlaue] = iVlaue
            
            if length >= stringLength-i {
                break;
            }
            
            for j in i+1..<stringLength {
                let offsetIndex = s.index(s.startIndex, offsetBy:j)
                let char = s[offsetIndex];
                
                if let _ = chars[char] {
                    break
                }
                else {
                    chars[char] = char
                }
            }
            
            if length < chars.keys.count {
                length = chars.keys.count
            }
        }
        
        return length
    }
    
    /// 滑动窗口,时间复杂度(n)
    func lengthOfLongestSubstringBetter(_ s: String) -> Int {
        
        let stringLength = s.count;
        if stringLength == 0 || stringLength == 1 {
            ///
            return stringLength;
        }
        
        var length = 0
        var chars = [Character:Int]()
        var startIndex = 0;
        for (i, char) in s.enumerated() {
            if let value = chars[char] {
                //出现重复字符，将startIndex移动至重复字符后一位，与现有startIndex比较取MAX
                startIndex = max(value+1, startIndex)
            }
            
            length = max(length, i - startIndex + 1)
            
            chars[char] = i
        }
        
        return length
    }
}

print("字符串长度：\(str.count)")
let length = Solution().lengthOfLongestSubstringBetter(str);
print("无重复字符的最长子串长度：\(length)")
