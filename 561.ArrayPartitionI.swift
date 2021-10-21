// Solved by Xecca

//561. Array Partition I
//Difficult: Easy
//https://leetcode.com/problems/array-partition-i/

//Runtime: 284 ms, faster than 100.00% of Swift online submissions for Array Partition I.
//Memory Usage: 14.8 MB, less than 66.67% of Swift online submissions for Array Partition I.
//

//Write a function that reverses a string. The input string is given as an array of characters s.Given an integer array nums of 2n integers, group these integers into n pairs (a1, b1), (a2, b2), ..., (an, bn) such that the sum of min(ai, bi) for all i is maximized. Return the maximized sum.

//If there is no common prefix, return an empty string "".
//
//Constraints:
//
//1 <= n <= 10^4
//nums.length == 2 * n
//-10^4 <= nums[i] <= 10^4

//

func arrayPairSum(_ nums: [Int]) -> Int {
    let length = nums.count - 1
    var i = 2
    let newNums = nums.sorted()
    var pairSum = newNums[0]
    
    while i < length {
        pairSum += newNums[i]
        i += 2
    }

    return pairSum
}

//

//Example 1:
//
//Input: nums = [1,4,3,2]
//Output: 4
//Explanation: All possible pairings (ignoring the ordering of elements) are:
//1. (1, 4), (2, 3) -> min(1, 4) + min(2, 3) = 1 + 2 = 3
//2. (1, 3), (2, 4) -> min(1, 3) + min(2, 4) = 1 + 2 = 3
//3. (1, 2), (3, 4) -> min(1, 2) + min(3, 4) = 1 + 3 = 4
//So the maximum possible sum is 4.
//Example 2:
//
//Input: nums = [6,2,6,5,1,2]
//Output: 9
//Explanation: The optimal pairing is (2, 1), (2, 5), (6, 6). min(2, 1) + min(2, 5) + min(6, 6) = 1 + 2 + 6 = 9.

//Test cases:

let input = [1,4,3,2]
let answer = 4

if arrayPairSum(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

