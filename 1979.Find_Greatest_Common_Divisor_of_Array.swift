// Solved by Xecca

//1979. Find Greatest Common Divisor of Array
//Difficult: Easy
//https://leetcode.com/problems/find-greatest-common-divisor-of-array/

//Runtime: 28 ms, faster than 100.00% of Swift online submissions for Find Greatest Common Divisor of Array.
//Memory Usage: 14.2 MB, less than 23.81% of Swift online submissions for Find Greatest Common Divisor of Array.

//

//Given an integer array nums, return the greatest common divisor of the smallest number and largest number in nums.
//
//The greatest common divisor of two numbers is the largest positive integer that evenly divides both numbers.

//Constraints:
//
//2 <= nums.length <= 1000
//1 <= nums[i] <= 1000

//

func findGCD(_ nums: [Int]) -> Int {
        let min = nums.min() ?? 1
        let max = nums.max() ?? 1
        var divider = 1
        var maxDivider = 1

        while divider <= min {
            if max % divider == 0 && min % divider == 0 {
                maxDivider = divider
            }
            divider += 1
        }

        return maxDivider
    }

//Example 1:
//
//Input: nums = [2,5,6,9,10]
//Output: 2
//Explanation:
//The smallest number in nums is 2.
//The largest number in nums is 10.
//The greatest common divisor of 2 and 10 is 2.
//Example 2:
//
//Input: nums = [7,5,6,8,3]
//Output: 1
//Explanation:
//The smallest number in nums is 3.
//The largest number in nums is 8.
//The greatest common divisor of 3 and 8 is 1.
//Example 3:
//
//Input: nums = [3,3]
//Output: 3
//Explanation:
//The smallest number in nums is 3.
//The largest number in nums is 3.
//The greatest common divisor of 3 and 3 is 3.

//Test cases:

if findGCD([2,5,6,9,10]) == 2 { print("Correct!") } else { print("Error! Expected: \(2)") }

