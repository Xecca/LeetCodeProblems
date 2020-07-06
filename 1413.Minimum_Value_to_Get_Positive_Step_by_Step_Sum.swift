//1413. Minimum Value to Get Positive Step by Step Sum
//Сomplexity: Easy
//https://leetcode.com/problems/minimum-value-to-get-positive-step-by-step-sum/
//----------------------------------------------------
//Runtime: 8 ms, faster than 77.78% of Swift online submissions for Minimum Value to Get Positive Step by Step Sum.
//Memory Usage: 21.1 MB, less than 25.00% of Swift online submissions for Minimum Value to Get Positive Step by Step Sum.
//----------------------------------------------------

//Given an array of integers nums, you start with an initial positive value startValue.
//
//In each iteration, you calculate the step by step sum of startValue plus elements in nums (from left to right).
//
//Return the minimum positive value of startValue such that the step by step sum is never less than 1.

func minStartValue(_ nums: [Int]) -> Int {
    var sum = 1
    var startVal = 1

    for num in nums {
        sum += num
        if sum < 1 {
            startVal += 1 - sum
            sum = 1
        }
    }
    return startVal
}

//Input:
let nums = [1,-2,-3]
//Output: 5
//Explanation: If you choose startValue = 4, in the third iteration your step by step sum is less than 1.
//                step by step sum
//                startValue = 4 | startValue = 5 | nums
//                  (4 -3 ) = 1  | (5 -3 ) = 2    |  -3
//                  (1 +2 ) = 3  | (2 +2 ) = 4    |   2
//                  (3 -3 ) = 0  | (4 -3 ) = 1    |  -3
//                  (0 +4 ) = 4  | (1 +4 ) = 5    |   4
//                  (4 +2 ) = 6  | (5 +2 ) = 7    |   2

minStartValue(nums)

