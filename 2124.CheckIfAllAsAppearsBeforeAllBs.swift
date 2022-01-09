// Solved by Xecca

import Foundation

//2124. Check if All A's Appears Before All B's
//Difficult: Easy
//https://leetcode.com/problems/check-if-all-as-appears-before-all-bs/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Check if All A's Appears Before All B's.
//Memory Usage: 14.7 MB, less than 6.90% of Swift online submissions for Check if All A's Appears Before All B's.

//

//Given a string s consisting of only the characters 'a' and 'b', return true if every 'a' appears before every 'b' in the string. Otherwise, return false.
//
//Constraints:
//
//1 <= s.length <= 100
//s[i] is either 'a' or 'b'.

//

func checkString(_ s: String) -> Bool {
    if !s.contains("a") || !s.contains("b") {
        return true
    }

    let firstB = s.firstIndex(of: "b")!
    let bSentense = s[firstB...String.Index(utf16Offset: s.count - 1, in: s)]
    
    if bSentense.contains("a") {
        return false
    }
    
    return true
}

//Example 1:
//
//Input: s = "aaabbb"
//Output: true
//Explanation:
//The 'a's are at indices 0, 1, and 2, while the 'b's are at indices 3, 4, and 5.
//Hence, every 'a' appears before every 'b' and we return true.
//Example 2:
//
//Input: s = "abab"
//Output: false
//Explanation:
//There is an 'a' at index 2 and a 'b' at index 1.
//Hence, not every 'a' appears before every 'b' and we return false.
//Example 3:
//
//Input: s = "bbb"
//Output: true
//Explanation:
//There are no 'a's, hence, every 'a' appears before every 'b' and we return true.

//Test cases:

let input = "abab"
let answer = false

if checkString(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

