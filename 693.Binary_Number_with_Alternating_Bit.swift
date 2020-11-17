// Solved by Xecca

//693. Binary Number with Alternating Bits
//Сomplexity: Easy
//https://leetcode.com/problems/binary-number-with-alternating-bits/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Binary Number with Alternating Bits.
//Memory Usage: 13.5 MB, less than 100.00% of Swift online submissions for Binary Number with Alternating Bits.
//----------------------------------------------------

//Given a positive integer, check whether it has alternating bits: namely, if two adjacent bits will always have different values.
//
//Constraints:
//
//1 <= n <= 231 - 1

//----------------------------------------------------

func hasAlternatingBits(_ n: Int) -> Bool {
    var num = n
    var prevBit = ""
    var currentBit = ""

    if num % 2 == 0 {
        prevBit = "0"
    } else {
        prevBit = "1"
    }
    num /= 2
    while num >= 1 {
        if num % 2 == 0 {
            currentBit = "0"
        } else {
            currentBit = "1"
        }
        if prevBit == currentBit {
            return false
        }
        num /= 2
        prevBit = currentBit
    }

    return true
}

//Example 1:
//Input: n = 5
//Output: true
//Explanation: The binary representation of 5 is: 101
//Example 2:
//Input: n = 7
//Output: false
//Explanation: The binary representation of 7 is: 111.
//Example 3:
//Input: n = 11
//Output: false
//Explanation: The binary representation of 11 is: 1011.
//Example 4:
//Input: n = 10
//Output: true
//Explanation: The binary representation of 10 is: 1010.
//Example 5:
//Input: n = 3
//Output: false

//Test cases:
//

if hasAlternatingBits(5) == true { print("Correct!") } else { print("Error! Expected: \(true)") }
if hasAlternatingBits(7) == false { print("Correct!") } else { print("Error! Expected: \(false)") }
if hasAlternatingBits(11) == false { print("Correct!") } else { print("Error! Expected: \(false)") }
if hasAlternatingBits(10) == true { print("Correct!") } else { print("Error! Expected: \(true)") }
if hasAlternatingBits(3) == false { print("Correct!") } else { print("Error! Expected: \(false)") }

