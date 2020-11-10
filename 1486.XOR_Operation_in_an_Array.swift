// Solved by Xecca

//1486. XOR Operation in an Array
//Сomplexity: Easy
//https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for XOR Operation in an Array.
//Memory Usage: 13.5 MB, less than 11.43% of Swift online submissions for XOR Operation in an Array.
//----------------------------------------------------

//Given an integer n and an integer start.
//
//Define an array nums where nums[i] = start + 2*i (0-indexed) and n == nums.length.
//
//Return the bitwise XOR of all elements of nums.
//
//Constraints:
//
//1 <= n <= 1000
//0 <= start <= 1000
//n == nums.length

//----------------------------------------------------

func xorOperation(_ n: Int, _ start: Int) -> Int {
    var i = 0
    var currentNum = start
    var xor = 0

    while i < n {
        xor ^= currentNum
        currentNum += 2
        i += 1
    }

    return xor
}

//Example 1:
//
//Input: n = 5, start = 0
//Output: 8
//Explanation: Array nums is equal to [0, 2, 4, 6, 8] where (0 ^ 2 ^ 4 ^ 6 ^ 8) = 8.
//Where "^" corresponds to bitwise XOR operator.

//Test cases:
//
if xorOperation(5, 0) == 8 { print("Correct!") } else { print("Error! Expectes: \(8)") }
if xorOperation(10, 5) == 2 { print("Correct!") } else { print("Error! Expectes: \(2)") }

