//
//  LeetCodeProblems
//
//  Created by Xecca

//258. Add Digits
//Difficult: Easy
//https://leetcode.com/problems/add-digits/

//Runtime: 4 ms, faster than 78.57% of Swift online submissions for Add Digits.
//Memory Usage: 13.6 MB, less than 82.14% of Swift online submissions for Add Digits.

//
//Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.
//

func addDigits(_ num: Int) -> Int {
    if num == 0 {
        return 0
    } else if num % 9 == 0 {
        return 9
    } else {
        return num % 9
    }
}

//Example:
//
//Input: 38
//Output: 2
//Explanation: The process is like: 3 + 8 = 11, 1 + 1 = 2.
//             Since 2 has only one digit, return it.

//Test cases:

if addDigits(38) == 2 { print("Correct!") } else { print("Error!") }


