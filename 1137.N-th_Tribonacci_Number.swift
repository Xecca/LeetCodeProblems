// Solved by Xecca

//1137. N-th Tribonacci Number
//Difficult: Easy
//https://leetcode.com/problems/n-th-tribonacci-number/

//Runtime: 428 ms, faster than 90.04% of Swift online submissions for Find All Numbers Disappeared in an Array.
//Memory Usage: 16.7 MB, less than 62.55% of Swift online submissions for Find All Numbers Disappeared in an

//

//The Tribonacci sequence Tn is defined as follows:
//
//T0 = 0, T1 = 1, T2 = 1, and Tn+3 = Tn + Tn+1 + Tn+2 for n >= 0.
//
//Given n, return the value of Tn.

//Constraints:
//
//0 <= n <= 37
//The answer is guaranteed to fit within a 32-bit integer, ie. answer <= 2^31 - 1.

//

func tribonacci(_ n: Int) -> Int {
    
    if n == 0 {
        return 0
    } else if n == 1 || n == 2 {
        return 1
    } else if n == 3 {
        return 2
    }
    
    var row = [0, 1, 1]
    var tempTrib = [0, 0, 0]
    var trib = 0
    var i = 0
    
    while i < n - 3 {
        trib = row[0] + row[1] + row[2]
        tempTrib[0] = row[1]
        tempTrib[1] = row[2]
        tempTrib[2] = trib
        row = tempTrib
        i += 1
    }
    
    return row[0] + row[1] + row[2]
}

//Example 1:
//
//Input: n = 4
//Output: 4
//Explanation:
//T_3 = 0 + 1 + 1 = 2
//T_4 = 1 + 1 + 2 = 4
//Example 2:
//
//Input: n = 25
//Output: 1389537

//Test cases:

if tribonacci(4) == 4 { print("Correct!") } else { print("Error! Expected: \(4)") }
if tribonacci(25) == 1389537 { print("Correct!") } else { print("Error! Expected: \(1389537)") }

