// Solved by Xecca

//1317. Convert Integer to the Sum of Two No-Zero Integers
//Difficult: Easy
//https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers/

//Runtime: 4 ms, faster than 91.67% of Swift online submissions for Convert Integer to the Sum of Two No-Zero Integers.
//Memory Usage: 14.2 MB, less than 66.67% of Swift online submissions for Convert Integer to the Sum of Two No-Zero Integers.

//

//Given an integer n. No-Zero integer is a positive integer which doesn't contain any 0 in its decimal representation.
//
//Return a list of two integers [A, B] where:
//
//A and B are No-Zero integers.
//A + B = n
//It's guarateed that there is at least one valid solution. If there are many valid solutions you can return any of them.

//Constraints:
//
//2 <= n <= 10^4

//

func getNoZeroIntegers(_ n: Int) -> [Int] {
    var a = 1
    var b = n - 1
    
    while String(a).contains("0") || String(b).contains("0") {
        a += 1
        b -= 1
    }
    
    return [a, b]
}

//Example 1:
//
//Input: n = 2
//Output: [1,1]
//Explanation: A = 1, B = 1. A + B = n and both A and B don't contain any 0 in their decimal representation.
//Example 2:
//
//Input: n = 11
//Output: [2,9]
//Example 3:
//
//Input: n = 10000
//Output: [1,9999]
//Example 4:
//
//Input: n = 69
//Output: [1,68]
//Example 5:
//
//Input: n = 1010
//Output: [11,999]

//Test cases:

if getNoZeroIntegers(2) == [1,1] { print("Correct!") } else { print("Error! Expected: \([1,1])") }
if getNoZeroIntegers(1010) == [11,999] { print("Correct!") } else { print("Error! Expected: \([1,1])") }

