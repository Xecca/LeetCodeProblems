// Solved by Xecca

//344. Reverse String
//Difficult: Easy
//https://leetcode.com/problems/reverse-string/

//Runtime: 144 ms, faster than 98.33% of Swift online submissions for Reverse String.
//Memory Usage: 18.1 MB, less than 92.32% of Swift online submissions for Reverse String.

//

//Write a function that reverses a string. The input string is given as an array of characters s.

//If there is no common prefix, return an empty string "".
//
//Constraints:
//
//1 <= s.length <= 10^5
//s[i] is a printable ascii character.

//

func reverseString(_ s: inout [Character]) {
    var i = 0
    var j = s.count - 1
    
    while i < j {
        let tempChar = s[i]
        s[i] = s[j]
        s[j] = tempChar
        i += 1
        j -= 1
    }
}

//

//Example 1:
//
//Input: s = ["h","e","l","l","o"]
//Output: ["o","l","l","e","h"]
//Example 2:
//
//Input: s = ["H","a","n","n","a","h"]
//Output: ["h","a","n","n","a","H"]

//Test cases:

var charArr: [Character] = ["h","e","l","l","o"]
let answer: [Character] = ["o","l","l","e","h"]

reverseString(&charArr)

if charArr == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

