// Solved by Xecca

import Foundation

//647. Palindromic Substrings
//Difficult: Medium
//https://leetcode.com/problems/palindromic-substrings/

//Runtime: 162 ms, faster than 15.33% of Swift online submissions for Palindromic Substrings.
//Memory Usage: 14.1 MB, less than 86.86% of Swift online submissions for Palindromic Substrings.

//

//Given a string s, return the number of palindromic substrings in it.
//
//A string is a palindrome when it reads the same backward as forward.
//
//A substring is a contiguous sequence of characters within the string.
//

//Constraints:
//
//1 <= s.length <= 1000
//s consists of lowercase English letters.

//

func countSubstrings(_ s: String) -> Int {
    var i = 0
    var j = 1
    let length = s.count
    var countPalindrome = 0
    let strArr = Array(s)
    
    while i < length {
        countPalindrome += 1
        while j < length {
            if compareTwoSubstringsInArray(strArr, i, j) {
                countPalindrome += 1
            }
            j += 1
        }
        i += 1
        j = i + 1
    }
    
    return countPalindrome
}

func compareTwoSubstringsInArray(_ str: [Character], _ startRange: Int, _ endRange: Int) -> Bool {
    var i = startRange
    var j = endRange
    
    while i < j {
        if str[i] != str[j] {
            return false
        }
        i += 1
        j -= 1
    }
    
    return true
}

//Example 1:
//
//Input: s = "abc"
//Output: 3
//Explanation: Three palindromic strings: "a", "b", "c".
//Example 2:
//
//Input: s = "aaa"
//Output: 6
//Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".

//Test cases:

let input = "aaa"
let answer = 6

if countSubstrings(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

