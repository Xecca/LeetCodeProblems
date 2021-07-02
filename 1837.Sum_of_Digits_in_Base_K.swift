// Solved by Xecca

//1837. Sum of Digits in Base K
//Difficult: Easy
//https://leetcode.com/problems/sum-of-digits-in-base-k/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Sum of Digits in Base K.
//Memory Usage: 13.6 MB, less than 78.13% of Swift online submissions for Sum of Digits in Base K.

//

//Given an integer n (in base 10) and a base k, return the sum of the digits of n after converting n from base 10 to base k.
//
//After converting, each digit should be interpreted as a base 10 number, and the sum should be returned in base 10.
//
//Constraints:
//
//1 <= n <= 100
//2 <= k <= 10

//

func sumBase(_ n: Int, _ k: Int) -> Int {
    var num = n
    var sum = 0
    var base = 0
    
    while num >= 1 {
        base = num % k
        num /= k
        sum += base
    }
    
    return sum
}

//Example 1:
//
//Input: n = 34, k = 6
//Output: 9
//Explanation: 34 (base 10) expressed in base 6 is 54. 5 + 4 = 9.
//Example 2:
//
//Input: n = 10, k = 10
//Output: 1
//Explanation: n is already in base 10. 1 + 0 = 1.

//Test cases:

if sumBase(34, 6) == 9 { print("Correct!") } else { print("Error! Expected: \(9)") }

