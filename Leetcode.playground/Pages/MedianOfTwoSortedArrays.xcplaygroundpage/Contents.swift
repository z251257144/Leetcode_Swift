//: [Previous](@previous)

/**
 给定两个大小为 m 和 n 的有序数组 nums1 和 nums2。
 
 请你找出这两个有序数组的中位数，并且要求算法的时间复杂度为 O(log(m + n))。
 
 你可以假设 nums1 和 nums2 不会同时为空。
 
 示例 1:
 nums1 = [1, 3]
 nums2 = [2]
 则中位数是 2.0
 
 示例 2:
 nums1 = [1, 2]
 nums2 = [3, 4]
 则中位数是 (2 + 3)/2 = 2.5
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/median-of-two-sorted-arrays
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution {
    /// 全遍历解法,时间复杂度较高O(m+n)
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var mergedNum : [Int] = []
        let m = nums1.count
        let n = nums2.count
        var i = 0, j=0
        while i < m || j<n {
            let value1 = i < m ? nums1[i] : Int.max
            let value2 = j < n ? nums2[j] : Int.max
            if value1 < value2 {
                mergedNum.append(value1)
                i+=1;
            }
            else {
                mergedNum.append(value2)
                j+=1;
            }
        }
        print(mergedNum);
        
        if (m+n)%2 == 1 {
            return Double( mergedNum[(m+n)/2] )
        }
        else {
            return Double( (mergedNum[(m+n)/2] + mergedNum[(m+n)/2-1]) ) / 2.0
        }
    }
    
    
    /**
     题解：https://hk029.gitbooks.io/leetbook/%E5%88%86%E6%B2%BB/004.%20Median%20of%20Two%20Sorted%20Arrays[H]/004.%20Median%20of%20Two%20Sorted%20Arrays[H].html
     */
    func findMedianSortedArraysBetter(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count1 = nums1.count, count2 = nums2.count
        if count1 == 0 && count2 == 0 {
            return 0
        }
        
        if count1 > count2 {
            return self.findMedianSortedArraysBetter(nums2, nums1);
        }
        
        var L1=0, L2=0, R1=0, R2=0
        var low = 0, high = count1  //我们目前是虚拟加了'#', 所以数组1是2*n+1长度
        var mid1 = 0, mid2 = 0

        while low <= high {
            mid1 = (low+high)/2
            mid2 = count1 + count2 - mid1

            L1 = (mid1 == 0) ? Int.min : nums1[(mid1-1)/2];   //map to original element
            R1 = (mid1 == 2*count1) ? Int.max : nums1[mid1/2];

            L2 = (mid2 == 0) ? Int.min : nums2[(mid2-1)/2];
            R2 = (mid2 == 2*count2) ? Int.max : nums2[mid2/2];

            print("low=\(low);high=\(high);mid1=\(mid1);mid2=\(mid2);")
            print("L1=\(L1);R1=\(R1);L2=\(L2);R2=\(R2);")

            print("============")

            if L1 > R2 {
                high = mid1 - 1;
            }
            else if L2 > R1 {
                low = mid1 + 1;
            }
            else {
                break
            }
        }
        
        let LMax = Double( max(L1, L2) )
        let RMin = Double( min(R1, R2) )
        return (LMax + RMin)/2.0;
    }
    
    /**
     题解：https://leetcode-cn.com/problems/median-of-two-sorted-arrays/solution/xun-zhao-liang-ge-you-xu-shu-zu-de-zhong-wei-shu-b/
     */
    func findMedianSortedArraysBetter2(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let count1 = nums1.count, count2 = nums2.count
        if count1 == 0 && count2 == 0 {
            return 0
        }
        
        if count1 > count2 {
            return self.findMedianSortedArraysBetter2(nums2, nums1);
        }
        
        var low = 0, high = count1, mid1: Int = 0, mid2: Int = 0
        
        // 如果count1+count2是奇数，halfLen会少一个元素，所有在s总数量的基础上+1
        let halfLen = (count1 + count2 + 1) / 2
        
        while low <= high {
            mid1 = (low + high)/2
            mid2 = halfLen - mid1
            print("low=\(low);high=\(high);   mid1=\(mid1);mid2=\(mid2)")
            print("============")
            
            if mid1 < high && nums2[mid2-1] > nums1[mid1] {
                low = mid1 + 1
            }
            else if mid1 > low && nums1[mid1-1] > nums2[mid2] {
                high = mid1 - 1
            }
            else {
                var maxLeft = 0
                if (mid1 == 0) {
                    maxLeft = nums2[mid2-1];
                }
                else if (mid2 == 0) {
                    maxLeft = nums1[mid1-1];
                }
                else {
                    maxLeft = max(nums1[mid1-1], nums2[mid2-1]);
                }
                
                if ( (count1 + count2) % 2 == 1 ) {
                    return Double(maxLeft)
                }
                
                var minRight = 0
                if (mid1 == count1) {
                    minRight = nums2[mid2]
                }
                else if (mid2 == count2) {
                    minRight = nums1[mid1]
                }
                else {
                    minRight = min(nums1[mid1], nums2[mid2])
                }
                
                return Double(maxLeft + minRight) / 2.0;
            }
            
        }
        
        return 0.0
    }
}

let nums1: [Int] = [8]
let nums2 = [4,7,9, 11]
print("中位数是:\(Solution().findMedianSortedArraysBetter2(nums1, nums2))")


//: [Next](@next)
