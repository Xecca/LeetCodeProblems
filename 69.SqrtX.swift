// Solved by Xecca

import Foundation

//69. Sqrt(x)
//Difficult: Easy
//https://leetcode.com/problems/sqrtx/

//Runtime: 12 ms, faster than 34.13% of Swift online submissions for Sqrt(x).
//Memory Usage: 14.1 MB, less than 19.44% of Swift online submissions for Sqrt(x).
    
//

//Given a non-negative integer x, compute and return the square root of x.
//
//Since the return type is an integer, the decimal digits are truncated, and only the integer part of the result is returned.
//
//Note: You are not allowed to use any built-in exponent function or operator, such as pow(x, 0.5) or x ** 0.5.
//
//Constraints:
//
//0 <= x <= 2^31 - 1

//

func mySqrt(_ x: Int) -> Int {
    var i = 0
    
    while i * i <= x {
        i += 1
    }
    if i * i == x {
        return i
    }
    
    return i - 1
}

//Example 1:
//
//Input: x = 4
//Output: 2
//Example 2:
//
//Input: x = 8
//Output: 2
//Explanation: The square root of 8 is 2.82842..., and since the decimal part is truncated, 2 is returned.

//Test cases:

let input = 8
let answer = 2

if mySqrt(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

