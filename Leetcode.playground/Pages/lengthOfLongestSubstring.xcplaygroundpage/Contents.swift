//: [Previous](@previous)

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
