// Solved by Xecca

//1848. Minimum Distance to the Target Element
//Difficult: Easy
//https://leetcode.com/problems/minimum-distance-to-the-target-element/

//Runtime: 32 ms, faster than 93.75% of Swift online submissions for Minimum Distance to the Target Element.
//Memory Usage: 14.2 MB, less than 25.00% of Swift online submissions for Minimum Distance to the Target Element.

//

//Given an integer array nums (0-indexed) and two integers target and start, find an index i such that nums[i] == target and abs(i - start) is minimized. Note that abs(x) is the absolute value of x.
//
//Return abs(i - start).
//
//It is guaranteed that target exists in nums.

//Constraints:
//
//1 <= nums.length <= 1000
//1 <= nums[i] <= 10^4
//0 <= start < nums.length
//target is in nums.

//

func getMinDistance(_ nums: [Int], _ target: Int, _ start: Int) -> Int {
    var i = 0
    let length = nums.count
    var minDist = length - 1
    
    while i < length {
        if nums[i] == target {
            let dif = abs(i - start)
            if dif < minDist {
                minDist = dif
            }
        }
        i += 1
    }
    
    
    return minDist
}

//Example 1:
//
//Input: nums = [1,2,3,4,5], target = 5, start = 3
//Output: 1
//Explanation: nums[4] = 5 is the only value equal to target, so the answer is abs(4 - 3) = 1.
//Example 2:
//
//Input: nums = [1], target = 1, start = 0
//Output: 0
//Explanation: nums[0] = 1 is the only value equal to target, so the answer is abs(0 - 0) = 0.
//Example 3:
//
//Input: nums = [1,1,1,1,1,1,1,1,1,1], target = 1, start = 0
//Output: 0
//Explanation: Every value of nums is 1, but nums[0] minimizes abs(i - start), which is abs(0 - 0) = 0.

//Test cases:

if getMinDistance([1,2,3,4,5], 5, 3) == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }

