// Solved by Xecca

import Foundation

//371. Sum of Two Integers
//Difficult: Medium
//https://leetcode.com/problems/sum-of-two-integers/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Rearrange Characters to Make Target String.
//Memory Usage: 14.3 MB, less than 55.17% of Swift online submissions for Rearrange Characters to Make Target String.

//

//Given two integers a and b, return the sum of the two integers without using the operators + and -.

//

//Constraints:
//
//-1000 <= a, b <= 1000

//

func getSum(_ a: Int, _ b: Int) -> Int {
    var x = a
    var y = b
    
    while y != 0 {
        let carry = x & y
        
        x = x ^ y
        y = carry << 1
    }
    
    return x
}

//Example 1:
//
//Input: a = 1, b = 2
//Output: 3
//Example 2:
//
//Input: a = 2, b = 3
//Output: 5

//Test cases:

let input = 1
let input2 = 2
let answer = 3

if getSum(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

