// Solved by Xecca

//2006. Count Number of Pairs With Absolute Difference K
//Difficult: Easy
//https://leetcode.com/problems/count-number-of-pairs-with-absolute-difference-k/

//Runtime: 80 ms, faster than 70.00% of Swift online submissions for Count Number of Pairs With Absolute Difference K.
//Memory Usage: 13.8 MB, less than 90.00% of Swift online submissions for Count Number of Pairs With Absolute Difference K.

//

//Given an integer array nums and an integer k, return the number of pairs (i, j) where i < j such that |nums[i] - nums[j]| == k.
//
//The value of |x| is defined as:
//
//x if x >= 0.
//-x if x < 0.

//Constraints:
//
//1 <= nums.length <= 200
//1 <= nums[i] <= 100
//1 <= k <= 99

//

func countKDifference(_ nums: [Int], _ k: Int) -> Int {
    var i = 0
    var j = 1
    var pairs = 0
    
    while i < nums.count - 1 {
        j = i + 1
        while j < nums.count {
            if abs(nums[i] - nums[j]) == k {
                pairs += 1
            }
            j += 1
        }
        i += 1
    }
    
    return pairs
}

//

//Example 1:
//
//Input: nums = [1,2,2,1], k = 1
//Output: 4
//Explanation: The pairs with an absolute difference of 1 are:
//- [1,2,2,1]
//- [1,2,2,1]
//- [1,2,2,1]
//- [1,2,2,1]
//Example 2:
//
//Input: nums = [1,3], k = 3
//Output: 0
//Explanation: There are no pairs with an absolute difference of 3.
//Example 3:
//
//Input: nums = [3,2,1,5,4], k = 2
//Output: 3
//Explanation: The pairs with an absolute difference of 2 are:
//- [3,2,1,5,4]
//- [3,2,1,5,4]
//- [3,2,1,5,4]

//Test cases:

if countKDifference([3,2,1,5,4], 2) == 3 { print("Correct!") } else { print("Error! Expexted: \(3)") }

